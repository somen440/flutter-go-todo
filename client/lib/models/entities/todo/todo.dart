import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:todo_client/api/pb/todo/todo.pb.dart' as $pb;
import 'package:todo_client/util/datetime.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  factory Todo({
    @required int id,
    @required String title,
    @required bool done,
    @required DateTime created,
  }) = _Todo;

  factory Todo.fromProto($pb.Todo todo) {
    return _$_Todo(
      id: todo.id.toInt(),
      title: todo.title,
      done: todo.done,
      created: DateTime.parse(todo.created),
    );
  }

  @late
  String get createdAsString => dateTimeAsJaString(created.toLocal());
}
