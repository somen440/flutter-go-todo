package util

import (
	"context"
	"errors"

	"github.com/grpc-ecosystem/go-grpc-middleware/logging/logrus/ctxlogrus"
	grpc_ctxtags "github.com/grpc-ecosystem/go-grpc-middleware/tags"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// UnaryErrorInterceptor エラーインターセプター
func UnaryErrorInterceptor() grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
		grpc_ctxtags.Extract(ctx)
		l := ctxlogrus.Extract(ctx)

		resp, err := handler(ctx, req)
		if err == nil {
			return resp, nil
		}

		switch {
		case errors.Is(err, ErrNotFound):
			l.WithError(err).Warn("ワーニングです")
			err = status.Error(codes.NotFound, "NotFound Error")
		default:
			l.WithError(err).Error("エラーが発生しました")
			err = status.Error(codes.Internal, "Internal Error")
		}

		return nil, err
	}
}

// errors
var (
	ErrNotFound = errors.New("not found")
)
