///
//  Generated code. Do not modify.
//  source: todo/todo.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$createTodo =
      $grpc.ClientMethod<$0.CreateTodoRequest, $0.CreateTodoReply>(
          '/todo.TodoService/CreateTodo',
          ($0.CreateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateTodoReply.fromBuffer(value));
  static final _$getTodoList =
      $grpc.ClientMethod<$0.GetTodoListRequest, $0.GetTodoListReply>(
          '/todo.TodoService/GetTodoList',
          ($0.GetTodoListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTodoListReply.fromBuffer(value));
  static final _$updateTodoTitle =
      $grpc.ClientMethod<$0.UpdateTodoTitleRequest, $0.UpdateTodoTitleReply>(
          '/todo.TodoService/UpdateTodoTitle',
          ($0.UpdateTodoTitleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateTodoTitleReply.fromBuffer(value));
  static final _$doneTodo =
      $grpc.ClientMethod<$0.DoneTodoRequest, $0.DoneTodoReply>(
          '/todo.TodoService/DoneTodo',
          ($0.DoneTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DoneTodoReply.fromBuffer(value));
  static final _$unDoneTodo =
      $grpc.ClientMethod<$0.UnDoneTodoRequest, $0.UnDoneTodoReply>(
          '/todo.TodoService/UnDoneTodo',
          ($0.UnDoneTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UnDoneTodoReply.fromBuffer(value));
  static final _$deleteTodo =
      $grpc.ClientMethod<$0.DeleteTodoRequest, $0.DeleteTodoReply>(
          '/todo.TodoService/DeleteTodo',
          ($0.DeleteTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteTodoReply.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateTodoReply> createTodo(
      $0.CreateTodoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTodoListReply> getTodoList(
      $0.GetTodoListRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getTodoList, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateTodoTitleReply> updateTodoTitle(
      $0.UpdateTodoTitleRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateTodoTitle, request, options: options);
  }

  $grpc.ResponseFuture<$0.DoneTodoReply> doneTodo($0.DoneTodoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$doneTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnDoneTodoReply> unDoneTodo(
      $0.UnDoneTodoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$unDoneTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteTodoReply> deleteTodo(
      $0.DeleteTodoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $0.CreateTodoReply>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($0.CreateTodoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTodoListRequest, $0.GetTodoListReply>(
        'GetTodoList',
        getTodoList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTodoListRequest.fromBuffer(value),
        ($0.GetTodoListReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateTodoTitleRequest, $0.UpdateTodoTitleReply>(
            'UpdateTodoTitle',
            updateTodoTitle_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateTodoTitleRequest.fromBuffer(value),
            ($0.UpdateTodoTitleReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DoneTodoRequest, $0.DoneTodoReply>(
        'DoneTodo',
        doneTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DoneTodoRequest.fromBuffer(value),
        ($0.DoneTodoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnDoneTodoRequest, $0.UnDoneTodoReply>(
        'UnDoneTodo',
        unDoneTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UnDoneTodoRequest.fromBuffer(value),
        ($0.UnDoneTodoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTodoRequest, $0.DeleteTodoReply>(
        'DeleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTodoRequest.fromBuffer(value),
        ($0.DeleteTodoReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTodoReply> createTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateTodoRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.GetTodoListReply> getTodoList_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetTodoListRequest> request) async {
    return getTodoList(call, await request);
  }

  $async.Future<$0.UpdateTodoTitleReply> updateTodoTitle_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateTodoTitleRequest> request) async {
    return updateTodoTitle(call, await request);
  }

  $async.Future<$0.DoneTodoReply> doneTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DoneTodoRequest> request) async {
    return doneTodo(call, await request);
  }

  $async.Future<$0.UnDoneTodoReply> unDoneTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.UnDoneTodoRequest> request) async {
    return unDoneTodo(call, await request);
  }

  $async.Future<$0.DeleteTodoReply> deleteTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteTodoRequest> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$0.CreateTodoReply> createTodo(
      $grpc.ServiceCall call, $0.CreateTodoRequest request);
  $async.Future<$0.GetTodoListReply> getTodoList(
      $grpc.ServiceCall call, $0.GetTodoListRequest request);
  $async.Future<$0.UpdateTodoTitleReply> updateTodoTitle(
      $grpc.ServiceCall call, $0.UpdateTodoTitleRequest request);
  $async.Future<$0.DoneTodoReply> doneTodo(
      $grpc.ServiceCall call, $0.DoneTodoRequest request);
  $async.Future<$0.UnDoneTodoReply> unDoneTodo(
      $grpc.ServiceCall call, $0.UnDoneTodoRequest request);
  $async.Future<$0.DeleteTodoReply> deleteTodo(
      $grpc.ServiceCall call, $0.DeleteTodoRequest request);
}
