import 'package:flutter/material.dart';

import 'package:todo_client/pages/todo_list_page/todo_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => TodoListPage(),
      },
    );
  }
}
