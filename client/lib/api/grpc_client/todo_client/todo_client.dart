import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

import 'package:todo_client/api/grpc_client/grpc_client.dart';
import 'package:todo_client/api/pb/todo/todo.pb.dart' as $pb;
import 'package:todo_client/api/pb/todo/todo.pbgrpc.dart' as $pbgrpc;
import 'package:todo_client/models/model.dart';

class TodoGrpcClient implements TodoRepository {
  Future<Todo> create({@required String title}) async {
    final channel = createChannel();
    final stub = _createStub(channel);

    final request = $pb.CreateTodoRequest()..title = title;
    final reply = await stub.createTodo(request);

    await channel.shutdown();

    return Todo.fromProto(reply.todo);
  }

  Future<List<Todo>> getList(/** todo: pagination **/) async {
    final channel = createChannel();
    final stub = _createStub(channel);

    final request = $pb.GetTodoListRequest();
    final reply = await stub.getTodoList(request);

    await channel.shutdown();

    return reply.todoList.map((e) => Todo.fromProto(e)).toList();
  }

  Future<void> edit({@required int id, @required String title}) async {
    final channel = createChannel();
    final stub = _createStub(channel);

    final request = $pb.UpdateTodoTitleRequest()
      ..id = $fixnum.Int64(id)
      ..title = title;
    await stub.updateTodoTitle(request);
  }

  Future<void> done({@required int id}) async {
    final channel = createChannel();
    final stub = _createStub(channel);

    final request = $pb.DoneTodoRequest()..id = $fixnum.Int64(id);
    await stub.doneTodo(request);
  }

  Future<void> unDone({@required int id}) async {
    final channel = createChannel();
    final stub = _createStub(channel);

    final request = $pb.UnDoneTodoRequest()..id = $fixnum.Int64(id);
    await stub.unDoneTodo(request);
  }

  Future<void> delete({@required int id}) async {
    final channel = createChannel();
    final stub = _createStub(channel);

    final request = $pb.DeleteTodoRequest()..id = $fixnum.Int64(id);
    await stub.deleteTodo(request);
  }

  $pbgrpc.TodoServiceClient _createStub(ClientChannel channel) {
    return $pbgrpc.TodoServiceClient(
      channel,
      options: CallOptions(
        timeout: Duration(seconds: 30),
      ),
    );
  }
}
