package util

import (
	"context"
	"sync"
	"time"

	"github.com/grpc-ecosystem/go-grpc-middleware/logging/logrus/ctxlogrus"
	grpc_ctxtags "github.com/grpc-ecosystem/go-grpc-middleware/tags"
	"github.com/sirupsen/logrus"
	"google.golang.org/grpc"
)

// UnaryTimerInterceptor timer
func UnaryTimerInterceptor() grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
		defaultTimeStock.Start(ctx)
		defer defaultTimeStock.Stop(ctx)
		return handler(ctx, req)
	}
}

type timeStock struct {
	timeMap map[string]time.Time

	cond *sync.Cond
}

var defaultTimeStock *timeStock

func init() {
	defaultTimeStock = &timeStock{
		timeMap: map[string]time.Time{},
		cond:    sync.NewCond(&sync.Mutex{}),
	}
}

func (t *timeStock) Start(ctx context.Context) {
	t.cond.L.Lock()
	defer t.cond.L.Unlock()

	grpc_ctxtags.Extract(ctx)
	l := ctxlogrus.Extract(ctx)

	requestID := GetRequestID(ctx)
	_, ok := t.timeMap[requestID]
	if ok {
		return
	}

	now := time.Now()

	t.timeMap[requestID] = now.UTC()
	l.WithFields(logrus.Fields{
		"requestID": requestID,
		"now":       now,
	}).Info("Start Time")
}

func (t *timeStock) Stop(ctx context.Context) {
	t.cond.L.Lock()
	defer t.cond.L.Unlock()

	grpc_ctxtags.Extract(ctx)
	l := ctxlogrus.Extract(ctx)

	requestID := GetRequestID(ctx)
	_, ok := t.timeMap[requestID]
	if !ok {
		return
	}

	delete(t.timeMap, requestID)

	l.WithFields(logrus.Fields{
		"requestID": requestID,
	}).Info("End Time")
}

func (t *timeStock) Time(ctx context.Context) time.Time {
	requestID := GetRequestID(ctx)
	tm, ok := t.timeMap[requestID]
	if !ok {
		return time.Now()
	}
	return tm
}

// Time return Time
func Time(ctx context.Context) time.Time {
	return defaultTimeStock.Time(ctx)
}

// formats
const (
	YmdHis = "2006-01-02 15:04:05"
)

// TimeToFormat Y-m-d H:i:s 形式の文字列へ
func TimeToFormat(t time.Time) string {
	return t.Format(YmdHis)
}
