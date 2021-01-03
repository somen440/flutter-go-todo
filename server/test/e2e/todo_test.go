package e2e

import (
	"context"
	"testing"

	todopb "github.com/somen440/flutter-go-todo/server/internal/pb/todo"
	"github.com/somen440/flutter-go-todo/server/test/e2e/util"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
)

func TestTodo(t *testing.T) {
	ctx := context.Background()

	conn, err := grpc.DialContext(ctx, "bufnet", grpc.WithContextDialer(util.BufDialer), grpc.WithInsecure())
	assert.Nil(t, err)
	defer conn.Close()

	client := todopb.NewTodoServiceClient(conn)

	testTodoList := func(t *testing.T, expected []*todopb.Todo) {
		getReq := &todopb.GetTodoListRequest{}
		getReply, err := client.GetTodoList(ctx, getReq)
		if !assert.Nil(t, err) {
			t.FailNow()
		}
		actual := getReply.TodoList
		assert.Equal(t, expected, actual)
	}

	t.Run("create test", func(t *testing.T) {
		createReq := &todopb.CreateTodoRequest{
			Title: "test title",
		}

		testTodoList(t, nil)

		createReply, err := client.CreateTodo(ctx, createReq)
		if !assert.Nil(t, err) {
			t.FailNow()
		}
		assert.Equal(t, "test title", createReply.Todo.Title)

		testTodoList(t, []*todopb.Todo{
			createReply.Todo,
		})
	})
}
