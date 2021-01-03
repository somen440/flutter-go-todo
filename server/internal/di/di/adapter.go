package di

import (
	"github.com/somen440/flutter-go-todo/server/internal/adapter"
	"github.com/somen440/flutter-go-todo/server/internal/adapter/todo"
)

// NewAdapter return Adapter
func NewAdapter() *adapter.Adapter {
	return adapter.NewAdapter(
		NewRecorderAdapter(),
	)
}

// NewTodoAdapter return Adapter
func NewTodoAdapter() *todo.TdAdapter {
	return todo.NewTdAdapter(
		NewTodoUsecase(),
	)
}
