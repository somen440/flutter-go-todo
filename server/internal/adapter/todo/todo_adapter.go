package todo

import (
	"context"
	"time"

	"github.com/somen440/flutter-go-todo/server/internal/domain/entity/todo"
	todopb "github.com/somen440/flutter-go-todo/server/internal/pb/todo"
	todouc "github.com/somen440/flutter-go-todo/server/internal/usecase/todo"
)

// TdAdapter adapter
type TdAdapter struct {
	todoUc *todouc.Usecase
}

// NewTdAdapter return Adapter
func NewTdAdapter(
	todoUc *todouc.Usecase,
) *TdAdapter {
	return &TdAdapter{
		todoUc: todoUc,
	}
}

func (a *TdAdapter) CreateTodo(ctx context.Context, in *todopb.CreateTodoRequest) (*todopb.CreateTodoReply, error) {
	t, err := a.todoUc.Create(ctx, in.Title)
	if err != nil {
		return nil, err
	}
	return &todopb.CreateTodoReply{
		Todo: convEntityToProto(t),
	}, nil
}

func (a *TdAdapter) GetTodoList(ctx context.Context, in *todopb.GetTodoListRequest) (*todopb.GetTodoListReply, error) {
	tList, err := a.todoUc.GetList(ctx)
	if err != nil {
		return nil, err
	}
	return &todopb.GetTodoListReply{
		TodoList: convEntitiesToProtoList(tList),
	}, nil
}

func (a *TdAdapter) UpdateTodoTitle(ctx context.Context, in *todopb.UpdateTodoTitleRequest) (*todopb.UpdateTodoTitleReply, error) {
	if err := a.todoUc.UpdateTitle(ctx, in.Id, in.Title); err != nil {
		return nil, err
	}
	return &todopb.UpdateTodoTitleReply{}, nil
}

func (a *TdAdapter) DoneTodo(ctx context.Context, in *todopb.DoneTodoRequest) (*todopb.DoneTodoReply, error) {
	if err := a.todoUc.Done(ctx, in.Id); err != nil {
		return nil, err
	}
	return &todopb.DoneTodoReply{}, nil
}

func (a *TdAdapter) UnDoneTodo(ctx context.Context, in *todopb.UnDoneTodoRequest) (*todopb.UnDoneTodoReply, error) {
	if err := a.todoUc.UnDone(ctx, in.Id); err != nil {
		return nil, err
	}
	return &todopb.UnDoneTodoReply{}, nil
}

func (a *TdAdapter) DeleteTodo(ctx context.Context, in *todopb.DeleteTodoRequest) (*todopb.DeleteTodoReply, error) {
	if err := a.todoUc.Delete(ctx, in.Id); err != nil {
		return nil, err
	}
	return &todopb.DeleteTodoReply{}, nil
}

func convEntityToProto(t *todo.Todo) *todopb.Todo {
	return &todopb.Todo{
		Id:      int64(t.ID),
		Title:   t.Title,
		Done:    t.Done,
		Created: t.Created.Format(time.RFC3339),
	}
}

func convEntitiesToProtoList(tList []*todo.Todo) []*todopb.Todo {
	results := make([]*todopb.Todo, len(tList))
	for i, t := range tList {
		results[i] = convEntityToProto(t)
	}
	return results
}
