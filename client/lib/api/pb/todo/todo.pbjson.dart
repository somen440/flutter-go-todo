///
//  Generated code. Do not modify.
//  source: todo/todo.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
    const {'1': 'created', '3': 4, '4': 1, '5': 9, '10': 'created'},
  ],
};

const CreateTodoRequest$json = const {
  '1': 'CreateTodoRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
  ],
};

const CreateTodoReply$json = const {
  '1': 'CreateTodoReply',
  '2': const [
    const {'1': 'todo', '3': 1, '4': 1, '5': 11, '6': '.todo.Todo', '10': 'todo'},
  ],
};

const GetTodoListRequest$json = const {
  '1': 'GetTodoListRequest',
};

const GetTodoListReply$json = const {
  '1': 'GetTodoListReply',
  '2': const [
    const {'1': 'todoList', '3': 1, '4': 3, '5': 11, '6': '.todo.Todo', '10': 'todoList'},
  ],
};

const UpdateTodoTitleRequest$json = const {
  '1': 'UpdateTodoTitleRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

const UpdateTodoTitleReply$json = const {
  '1': 'UpdateTodoTitleReply',
};

const DoneTodoRequest$json = const {
  '1': 'DoneTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

const DoneTodoReply$json = const {
  '1': 'DoneTodoReply',
};

const UnDoneTodoRequest$json = const {
  '1': 'UnDoneTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

const UnDoneTodoReply$json = const {
  '1': 'UnDoneTodoReply',
};

const DeleteTodoRequest$json = const {
  '1': 'DeleteTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

const DeleteTodoReply$json = const {
  '1': 'DeleteTodoReply',
};

