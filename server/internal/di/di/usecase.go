package di

import "github.com/somen440/flutter-go-todo/server/internal/usecase/todo"

func NewTodoUsecase() *todo.Usecase {
	return todo.NewUsecase(
		NewTodoService(),
	)
}
