package main

import (
	"net"

	"github.com/somen440/flutter-go-todo/server/internal/config"
	"github.com/somen440/flutter-go-todo/server/internal/infrastructure/grpc"
	"github.com/somen440/flutter-go-todo/server/internal/util"
	"google.golang.org/grpc/reflection"
)

func main() {
	if err := run(); err != nil {
		util.Logger().Error(err)
	}
}

func run() error {
	grpcServer := grpc.NewServer()

	listen, err := net.Listen("tcp", config.Addr())
	if err != nil {
		return err
	}
	util.Logger().Info("listen ", config.Addr())

	reflection.Register(grpcServer)

	if err := grpcServer.Serve(listen); err != nil {
		return err
	}

	return nil
}
