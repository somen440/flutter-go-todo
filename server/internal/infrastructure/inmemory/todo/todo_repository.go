package todo

import (
	"context"
	"fmt"
	"sync"

	"github.com/somen440/flutter-go-todo/server/internal/domain/entity/todo"
	todorepo "github.com/somen440/flutter-go-todo/server/internal/domain/repository/todo"
	"github.com/somen440/flutter-go-todo/server/internal/util"
)

// Repository inmemory todo repository
type Repository struct {
	maxID   int64
	todoMap map[todo.ID]*todo.Todo
	todoN   int64
	cond    *sync.Cond
}

// NewRepository return Repository
func NewRepository() *Repository {
	return &Repository{
		maxID:   0,
		todoMap: map[todo.ID]*todo.Todo{},
		todoN:   0,
		cond:    sync.NewCond(&sync.Mutex{}),
	}
}

var _ todorepo.Repository = &Repository{}

// Create 作成
func (r *Repository) Create(ctx context.Context, t *todo.Todo) error {
	r.cond.L.Lock()
	defer r.cond.L.Unlock()

	r.maxID++
	todoID := todo.ID(r.maxID)
	t.ID = todoID

	r.todoMap[todoID] = t
	r.todoN++

	return nil
}

// FindList リストで返す
func (r *Repository) FindList(ctx context.Context) ([]*todo.Todo, error) {
	results := make([]*todo.Todo, r.todoN)

	i := 0
	for _, t := range r.todoMap {
		results[i] = t
		i++
	}

	return results, nil
}

// UpdateTitle タイトル更新
func (r *Repository) UpdateTitle(ctx context.Context, id todo.ID, title string) error {
	r.cond.L.Lock()
	defer r.cond.L.Unlock()

	t, ok := r.todoMap[id]
	if !ok {
		return fmt.Errorf("todo: UpdateTitle failed. id=%d: %w", id, util.ErrNotFound)
	}
	t.Title = title

	return nil
}

// UpdateDone 完了状態の更新
func (r *Repository) UpdateDone(ctx context.Context, id todo.ID, done bool) error {
	r.cond.L.Lock()
	defer r.cond.L.Unlock()

	t, ok := r.todoMap[id]
	if !ok {
		return fmt.Errorf("todo: UpdateDone failed. id=%d: %w", id, util.ErrNotFound)
	}
	t.Done = done

	return nil
}

// Delete 削除
func (r *Repository) Delete(ctx context.Context, id todo.ID) error {
	r.cond.L.Lock()
	defer r.cond.L.Unlock()

	_, ok := r.todoMap[id]
	if !ok {
		return fmt.Errorf("todo: Delete failed. id=%d: %w", id, util.ErrNotFound)
	}
	delete(r.todoMap, id)

	return nil
}
