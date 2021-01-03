package todo

import (
	"context"

	"github.com/somen440/flutter-go-todo/server/internal/domain/entity/todo"
	todosvc "github.com/somen440/flutter-go-todo/server/internal/domain/service/todo"
)

// Usecase ユースケース
type Usecase struct {
	todoSvc *todosvc.Service
}

// NewUsecase return Usecase
func NewUsecase(
	todoSvc *todosvc.Service,
) *Usecase {
	return &Usecase{
		todoSvc: todoSvc,
	}
}

// Create 作成
func (uc *Usecase) Create(ctx context.Context, title string) (*todo.Todo, error) {
	return uc.todoSvc.Create(ctx, title)
}

// GetList リスト
func (uc *Usecase) GetList(ctx context.Context) ([]*todo.Todo, error) {
	return uc.todoSvc.GetList(ctx)
}

// UpdateTitle タイトル更新
func (uc *Usecase) UpdateTitle(ctx context.Context, id int64, title string) error {
	return uc.todoSvc.UpdateTitle(ctx, id, title)
}

// Done 完了
func (uc *Usecase) Done(ctx context.Context, id int64) error {
	return uc.todoSvc.Done(ctx, id)
}

// UnDone 未完了
func (uc *Usecase) UnDone(ctx context.Context, id int64) error {
	return uc.todoSvc.UnDone(ctx, id)
}

// Delete 削除
func (uc *Usecase) Delete(ctx context.Context, id int64) error {
	return uc.todoSvc.Delete(ctx, id)
}
