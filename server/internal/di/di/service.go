package di

import "github.com/somen440/flutter-go-todo/server/internal/domain/service/todo"

func NewTodoService() *todo.Service {
	return todo.NewService(
		NewInmemoryTodoRepository(),
	)
}
