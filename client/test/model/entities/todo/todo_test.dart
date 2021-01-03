import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_client/api/pb/todo/todo.pb.dart' as $pb;
import 'package:todo_client/models/model.dart';

void main() {
  test('Todo test', () async {
    final pbTodo = $pb.Todo();
    pbTodo.id = $fixnum.Int64(1010);
    pbTodo.title = '2020';
    pbTodo.done = true;
    pbTodo.created = '2020-10-11T22:33:44Z';

    final target = Todo.fromProto(pbTodo);
    expect(target.id, 1010);
    expect(target.title, '2020');
    expect(target.done, true);
    expect(target.createdAsString, '2020/10/12(月) 07:33');
  });
}
