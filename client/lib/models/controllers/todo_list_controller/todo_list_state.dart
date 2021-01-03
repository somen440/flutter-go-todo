import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_client/models/model.dart';

part 'todo_list_state.freezed.dart';

@freezed
abstract class TodoListState implements _$TodoListState {
  factory TodoListState({
    @Default(<Todo>[]) List<Todo> todoList,
    @Default(true) bool isLoading,
  }) = _TodoListState;

  TodoListState._();

  @late
  Map<int, Todo> get _map => Map.fromEntries(
    todoList.map((t) => MapEntry(t.id, t)),
  );

  @late
  List<int> get ids => todoList.map((e) => e.id).toList();

  Todo todo(int id) => _map[id];
}
