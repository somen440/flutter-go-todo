package e2e

import (
	"log"
	"os"
	"testing"

	"github.com/somen440/flutter-go-todo/server/internal/infrastructure/grpc"
	"github.com/somen440/flutter-go-todo/server/test/e2e/util"
)

func init() {
	lis := util.BufListener()
	s := grpc.NewServer()
	go func() {
		if err := s.Serve(lis); err != nil {
			log.Fatalf("Server exited with error: %v", err)
		}
	}()
}

func TestMain(m *testing.M) {
	// before

	code := m.Run()

	// after

	os.Exit(code)
}
