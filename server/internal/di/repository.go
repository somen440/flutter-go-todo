package di

import (
	"github.com/somen440/flutter-go-todo/server/internal/domain/repository/todo"
	inmemtodo "github.com/somen440/flutter-go-todo/server/internal/infrastructure/inmemory/todo"
)

func NewInmemoryTodoRepository() todo.Repository {
	return inmemtodo.NewRepository()
}
