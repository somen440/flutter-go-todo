import 'package:todo_client/models/model.dart';

abstract class TodoRepository {
  Future<Todo> create({@required String title});
  Future<List<Todo>> getList(/** todo: pagination **/);
  Future<void> edit({@required int id, @required String title});
  Future<void> done({@required int id});
  Future<void> unDone({@required int id});
  Future<void> delete({@required int id});
}
