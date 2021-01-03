package util

import (
	"context"

	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
)

// XRequestIDKey リクエストID key
const XRequestIDKey = "x-request-id"

// UnaryRequestIDInterceptor unary rpc 用のリクエストID interceptor
func UnaryRequestIDInterceptor() grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
		rid := HandleRequestID(ctx)
		ctx = SetRequestID(ctx, rid)
		return handler(ctx, req)
	}
}

type requestIDKey struct{}

// SetRequestID setter
func SetRequestID(ctx context.Context, rid string) context.Context {
	return context.WithValue(ctx, requestIDKey{}, rid)
}

// GetRequestID getter
func GetRequestID(ctx context.Context) string {
	id, ok := ctx.Value(requestIDKey{}).(string)
	if !ok {
		return ""
	}
	return id
}

// HandleRequestID handler
func HandleRequestID(ctx context.Context) string {
	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return uuid.New().String()
	}
	ids, ok := md[XRequestIDKey]
	if !ok {
		return uuid.New().String()
	}
	if ids[0] == "" {
		return uuid.New().String()
	}
	return ids[0]
}
