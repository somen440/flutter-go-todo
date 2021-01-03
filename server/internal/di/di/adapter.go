package di

import (
	"github.com/somen440/flutter-go-todo/server/internal/adapter"
	"github.com/somen440/flutter-go-todo/server/internal/adapter/helloworld"
	"github.com/somen440/flutter-go-todo/server/internal/adapter/recorder"
	"github.com/somen440/flutter-go-todo/server/internal/adapter/todo"
)

// NewAdapter return Adapter
func NewAdapter() *adapter.Adapter {
	return adapter.NewAdapter(
		helloworld.NewHwAdapter(),
		NewTodoAdapter(),
		NewRecorderAdapter(),
	)
}

// NewTodoAdapter return Adapter
func NewTodoAdapter() *todo.TdAdapter {
	return todo.NewTdAdapter(
		NewTodoUsecase(),
	)
}

func NewRecorderAdapter() *recorder.RecorderAdapter {
	return recorder.NewRecorderAdapter()
}
