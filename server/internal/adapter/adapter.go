package adapter

import (
	"github.com/somen440/flutter-go-todo/server/internal/adapter/todo"
)

// Adapter grpc <-> usecase adapter
type Adapter struct {
	*todo.TdAdapter
}

// NewAdapter return Adapter
func NewAdapter(
	todoAdapter *todo.TdAdapter,
) *Adapter {
	return &Adapter{
		recorderAdapter,
	}
}
