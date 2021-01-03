import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_client/models/model.dart';
import 'package:todo_client/widget/error_popup/error_popup.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key key, @required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    const indent = 16.0;
    final theme = Theme.of(context);
    final textStyleMain = theme.textTheme.subtitle1;

    final todo = context.select<TodoListState, Todo>((v) => v.todo(id));

    void _onDoneChanged(bool done) {
      if (done) {
        context
            .read<TodoListController>()
            .done(id)
            .catchError((err) => popupError(context, err));
      } else {
        context
            .read<TodoListController>()
            .undone(id)
            .catchError((err) => popupError(context, err));
      }
    }

    void _onDelete() {
      context
          .read<TodoListController>()
          .delete(id)
          .catchError((err) => popupError(context, err));
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Checkbox(
                value: todo.done,
                onChanged: _onDoneChanged,
              ),
              const SizedBox(width: 8),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.title,
                    style: textStyleMain,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      todo.createdAsString,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              )),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: _onDelete,
              ),
            ],
          ),
          const Divider(indent: indent),
        ],
      ),
    );
  }
}
