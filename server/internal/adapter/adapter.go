package adapter

import (
	"github.com/somen440/flutter-go-todo/server/internal/adapter/helloworld"
	"github.com/somen440/flutter-go-todo/server/internal/adapter/recorder"
	"github.com/somen440/flutter-go-todo/server/internal/adapter/todo"
)

// Adapter grpc <-> usecase adapter
type Adapter struct {
	*helloworld.HwAdapter
	*todo.TdAdapter
	*recorder.RecorderAdapter
}

// NewAdapter return Adapter
func NewAdapter(
	helloworldAdapter *helloworld.HwAdapter,
	todoAdapter *todo.TdAdapter,
	recorderAdapter *recorder.RecorderAdapter,
) *Adapter {
	return &Adapter{
		helloworldAdapter,
		todoAdapter,
		recorderAdapter,
	}
}
