import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_client/models/model.dart';
import 'package:todo_client/pages/todo_list_page/todo_tile/todo_tile.dart';
import 'package:todo_client/widget/error_popup/error_popup.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo リスト')),
      body: RefreshIndicator(
        onRefresh: () {
          return context
              .read<TodoListController>()
              .reload()
              .catchError((err) => popupError(context, err));
        },
        child: _buildList(context),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    final ids = context.select<TodoListState, List<int>>((v) => v.ids);
    return context.select<TodoListState, bool>((v) => v.isLoading)
        ? const Center(child: CircularProgressIndicator())
        : Container(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: ids.length,
                    itemBuilder: (_, index) {
                      return TodoTile(id: ids[index]);
                    },
                  ),
                ),
                TextField(
                  autofocus: true,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  controller: _controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'コメントを追加',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        context
                            .read<TodoListController>()
                            .add(_controller.text)
                            .catchError((err) => popupError(context, err));
                        _controller.clear();
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
