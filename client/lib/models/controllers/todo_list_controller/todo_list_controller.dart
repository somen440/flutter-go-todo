import 'package:simple_logger/simple_logger.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:todo_client/models/model.dart';

import 'todo_list_state.dart';
export 'todo_list_state.dart';

class TodoListController extends StateNotifier<TodoListState>
    with LocatorMixin {
  TodoListController() : super(TodoListState());

  @override
  void initState() {
    super.initState();
    reload();
  }

  Future<void> reload() async {
    state = state.copyWith(isLoading: true);

    final entities = await _repository.getList();

    await Future<void>.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(
      todoList: entities,
      isLoading: false,
    );
  }

  Future<void> add(String title) async {
    final todo = await _repository.create(title: title);
    state = state.copyWith(
      todoList: [
        ...state.todoList,
        todo,
      ],
    );

    _logger.info('add todo title=$title');
  }

  Future<void> edit(int id, String title) async {
    await _repository.edit(id: id, title: title);
    state = state.copyWith(
      todoList: state.todoList.map((t) {
        if (t.id == id) {
          t = t.copyWith(
            title: title,
          );
          return t;
        }
        return t;
      }).toList(),
    );

    _logger.info('edit todo id=$id title=$title');
  }

  Future<void> done(int id) async {
    await _repository.done(id: id);
    state = state.copyWith(
      todoList: state.todoList.map((t) {
        if (t.id == id) {
          t = t.copyWith(
            done: true,
          );
          return t;
        }
        return t;
      }).toList(),
    );

    _logger.info('done todo id=$id');
  }

  Future<void> undone(int id) async {
    await _repository.unDone(id: id);
    state = state.copyWith(
      todoList: state.todoList.map((t) {
        if (t.id == id) {
          t = t.copyWith(
            done: false,
          );
          return t;
        }
        return t;
      }).toList(),
    );

    _logger.info('undone todo id=$id');
  }

  Future<void> delete(int id) async {
    await _repository.delete(id: id);
    state = state.copyWith(
      todoList: state.todoList.where((t) => t.id != id).toList(),
    );

    _logger.info('delete todo id=$id');
  }

  TodoRepository get _repository => read<TodoRepository>();
  Logger get _logger => read<Logger>();
}
