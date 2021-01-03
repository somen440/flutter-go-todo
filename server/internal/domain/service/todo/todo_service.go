package todo

import (
	"context"

	"github.com/somen440/flutter-go-todo/server/internal/domain/entity/todo"
	todorepo "github.com/somen440/flutter-go-todo/server/internal/domain/repository/todo"
	"github.com/somen440/flutter-go-todo/server/internal/util"
)

// Service todo service
type Service struct {
	todoRepo todorepo.Repository
}

// NewService return service
func NewService(
	todoRepo todorepo.Repository,
) *Service {
	return &Service{
		todoRepo: todoRepo,
	}
}

// Create 作成
func (svc *Service) Create(ctx context.Context, title string) (*todo.Todo, error) {
	t := &todo.Todo{
		Title:    title,
		Done:     false,
		Created:  util.Time(ctx),
		Modified: util.Time(ctx),
	}

	if err := svc.todoRepo.Create(ctx, t); err != nil {
		return nil, err
	}

	return t, nil
}

// GetList リスト
func (svc *Service) GetList(ctx context.Context) ([]*todo.Todo, error) {
	return svc.todoRepo.FindList(ctx)
}

// UpdateTitle タイトル更新
func (svc *Service) UpdateTitle(ctx context.Context, id int64, title string) error {
	var (
		todoID = todo.ID(id)
	)
	return svc.todoRepo.UpdateTitle(ctx, todoID, title)
}

// Done todo完了にする
func (svc *Service) Done(ctx context.Context, id int64) error {
	var (
		todoID = todo.ID(id)
	)
	return svc.todoRepo.UpdateDone(ctx, todoID, true)
}

// UnDone todo未完了にする
func (svc *Service) UnDone(ctx context.Context, id int64) error {
	var (
		todoID = todo.ID(id)
	)
	return svc.todoRepo.UpdateDone(ctx, todoID, false)
}

// Delete todo削除
func (svc *Service) Delete(ctx context.Context, id int64) error {
	var (
		todoID = todo.ID(id)
	)
	return svc.todoRepo.Delete(ctx, todoID)
}
