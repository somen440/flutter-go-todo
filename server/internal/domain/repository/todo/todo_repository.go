package todo

import (
	"context"

	"github.com/somen440/flutter-go-todo/server/internal/domain/entity/todo"
)

// Repository todo repository
type Repository interface {
	// Create 作成
	Create(ctx context.Context, t *todo.Todo) error
	// FindList リストで返す
	FindList(ctx context.Context) ([]*todo.Todo, error)
	// UpdateTitle タイトル更新
	UpdateTitle(ctx context.Context, id todo.ID, title string) error
	// UpdateDone 完了状態の更新
	UpdateDone(ctx context.Context, id todo.ID, done bool) error
	// Delete 削除
	Delete(ctx context.Context, id todo.ID) error
}
