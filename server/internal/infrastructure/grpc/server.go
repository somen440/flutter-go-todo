package grpc

import (
	"github.com/somen440/flutter-go-todo/server/internal/di"
	todopb "github.com/somen440/flutter-go-todo/server/internal/pb/todo"
	"github.com/somen440/flutter-go-todo/server/internal/util"

	grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
	grpc_logrus "github.com/grpc-ecosystem/go-grpc-middleware/logging/logrus"
	grpc_recovery "github.com/grpc-ecosystem/go-grpc-middleware/recovery"
	grpc_ctxtags "github.com/grpc-ecosystem/go-grpc-middleware/tags"
	"github.com/sirupsen/logrus"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

var (
	codeToLevel func(code codes.Code) logrus.Level
)

func init() {
	codeToLevel = grpc_logrus.DefaultCodeToLevel
}

func NewServer() *grpc.Server {
	log := util.Logger()

	logrusEntry := logrus.NewEntry(log)
	logrusOpts := []grpc_logrus.Option{
		grpc_logrus.WithLevels(codeToLevel),
	}
	grpc_logrus.ReplaceGrpcLogger(logrusEntry)

	recoveryHandler := func(p interface{}) (err error) {
		return status.Errorf(codes.Unknown, "panic triggered: %+v", p)
	}
	recoveryOpts := []grpc_recovery.Option{
		grpc_recovery.WithRecoveryHandler(recoveryHandler),
	}

	unaryMiddleware := grpc_middleware.WithUnaryServerChain(
		grpc_ctxtags.UnaryServerInterceptor(grpc_ctxtags.WithFieldExtractor(grpc_ctxtags.CodeGenRequestFieldExtractor)),
		grpc_logrus.UnaryServerInterceptor(logrusEntry, logrusOpts...),
		grpc_recovery.UnaryServerInterceptor(recoveryOpts...),
		util.UnaryRequestIDInterceptor(),
		util.UnaryErrorInterceptor(),
		util.UnaryTimerInterceptor(),
	)
	streamMiddleware := grpc_middleware.WithStreamServerChain(
		grpc_ctxtags.StreamServerInterceptor(grpc_ctxtags.WithFieldExtractor(grpc_ctxtags.CodeGenRequestFieldExtractor)),
		grpc_logrus.StreamServerInterceptor(logrusEntry, logrusOpts...),
		grpc_recovery.StreamServerInterceptor(recoveryOpts...),
	)

	grpcServer := grpc.NewServer(
		unaryMiddleware,
		streamMiddleware,
	)

	adapter := di.NewAdapter()
	todopb.RegisterTodoServiceService(grpcServer, &todopb.TodoServiceService{
		CreateTodo:      adapter.CreateTodo,
		GetTodoList:     adapter.GetTodoList,
		UpdateTodoTitle: adapter.UpdateTodoTitle,
		DoneTodo:        adapter.DoneTodo,
		UnDoneTodo:      adapter.UnDoneTodo,
		DeleteTodo:      adapter.DeleteTodo,
	})

	return grpcServer
}
