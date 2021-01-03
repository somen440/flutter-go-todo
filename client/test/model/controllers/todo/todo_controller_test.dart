import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_logger/simple_logger.dart';

import 'package:todo_client/models/model.dart';

class MockTodoClient extends Mock implements TodoRepository {}
class MockLogger extends Mock implements Logger {}

void main() {
  group('TodoListController test group', () {
    final mockTodoList = [
      Todo(
        id: 1011,
        title: 'test1',
        done: true,
        created: DateTime.parse('2020-10-11T22:33:44Z'),
      ),
      Todo(
        id: 1012,
        title: 'test2',
        done: false,
        created: DateTime.parse('2020-10-11T22:33:44Z'),
      ),
      Todo(
        id: 1013,
        title: 'test3',
        done: true,
        created: DateTime.parse('2020-10-11T22:33:44Z'),
      ),
    ];
    final client = MockTodoClient();
    final logger = MockLogger();

    final controller = TodoListController()
      ..debugMockDependency<TodoRepository>(client)
      ..debugMockDependency<Logger>(logger);

    test('reload', () async {
      when(client.getList()).thenAnswer((_) async => mockTodoList);

      expect(controller.debugState.ids, []);
      await controller.reload();
      expect(controller.debugState.ids, [1011, 1012, 1013]);
    });

    test('add', () async {
      const title = 'add title';
      final todo = Todo(
        id: 9999,
        title: title,
        done: false,
        created: DateTime.now(),
      );

      when(client.create(title: title)).thenAnswer((_) async => todo);

      await controller.add(title);
      expect(controller.debugState.ids, [1011, 1012, 1013, 9999]);
    });

    test('edit', () async {
      const editId = 1011;
      const editTitle = 'edit title';

      when(client.edit(id: editId, title: editTitle))
          .thenAnswer((_) async => Future.value());

      await controller.edit(editId, editTitle);
      expect(controller.debugState.todo(editId).title, editTitle);
    });

    test('done', () async {
      const id = 1012;

      when(client.done(id: id)).thenAnswer((_) async => Future.value());

      await controller.done(id);
      expect(controller.debugState.todo(id).done, true);
    });

    test('undone', () async {
      const id = 1013;

      when(client.unDone(id: id)).thenAnswer((_) async => Future.value());

      await controller.undone(id);
      expect(controller.debugState.todo(id).done, false);
    });

    test('delete', () async {
      const deleteId = 9999;

      when(client.delete(id: deleteId)).thenAnswer((_) async => Future.value());

      await controller.delete(deleteId);
      expect(controller.debugState.ids, <int>[1011, 1012, 1013]);
    });
  });
}
