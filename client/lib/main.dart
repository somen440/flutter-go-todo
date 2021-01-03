import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:simple_logger/simple_logger.dart';
import 'package:todo_client/api/grpc_client/todo_client/todo_client.dart';

import 'package:todo_client/app.dart';
import 'package:todo_client/models/model.dart';
import 'package:todo_client/pages/todo_list_page/todo_list_page.dart';

Future main() async {
  await DotEnv().load('.env');

  runApp(MultiProvider(
    providers: [
      Provider<Logger>(create: (_) => Logger('todo_client')),
      Provider<TodoRepository>(create: (_) => TodoGrpcClient()),
      StateNotifierProvider<TodoListController, TodoListState>(
        create: (context) => TodoListController(),
        child: TodoListPage(),
      ),
    ],
    child: App(),
  ));
}
