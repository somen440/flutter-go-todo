///
//  Generated code. Do not modify.
//  source: todo/todo.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Todo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Todo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'done')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created')
    ..hasRequiredFields = false
  ;

  Todo._() : super();
  factory Todo() => create();
  factory Todo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Todo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Todo clone() => Todo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Todo copyWith(void Function(Todo) updates) => super.copyWith((message) => updates(message as Todo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Todo create() => Todo._();
  Todo createEmptyInstance() => create();
  static $pb.PbList<Todo> createRepeated() => $pb.PbList<Todo>();
  @$core.pragma('dart2js:noInline')
  static Todo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Todo>(create);
  static Todo _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get created => $_getSZ(3);
  @$pb.TagNumber(4)
  set created($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreated() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreated() => clearField(4);
}

class CreateTodoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTodoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  CreateTodoRequest._() : super();
  factory CreateTodoRequest() => create();
  factory CreateTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoRequest clone() => CreateTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoRequest copyWith(void Function(CreateTodoRequest) updates) => super.copyWith((message) => updates(message as CreateTodoRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest create() => CreateTodoRequest._();
  CreateTodoRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTodoRequest> createRepeated() => $pb.PbList<CreateTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoRequest>(create);
  static CreateTodoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class CreateTodoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTodoReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aOM<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todo', subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  CreateTodoReply._() : super();
  factory CreateTodoReply() => create();
  factory CreateTodoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoReply clone() => CreateTodoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoReply copyWith(void Function(CreateTodoReply) updates) => super.copyWith((message) => updates(message as CreateTodoReply)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTodoReply create() => CreateTodoReply._();
  CreateTodoReply createEmptyInstance() => create();
  static $pb.PbList<CreateTodoReply> createRepeated() => $pb.PbList<CreateTodoReply>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoReply>(create);
  static CreateTodoReply _defaultInstance;

  @$pb.TagNumber(1)
  Todo get todo => $_getN(0);
  @$pb.TagNumber(1)
  set todo(Todo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTodo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTodo() => clearField(1);
  @$pb.TagNumber(1)
  Todo ensureTodo() => $_ensure(0);
}

class GetTodoListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTodoListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetTodoListRequest._() : super();
  factory GetTodoListRequest() => create();
  factory GetTodoListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTodoListRequest clone() => GetTodoListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTodoListRequest copyWith(void Function(GetTodoListRequest) updates) => super.copyWith((message) => updates(message as GetTodoListRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTodoListRequest create() => GetTodoListRequest._();
  GetTodoListRequest createEmptyInstance() => create();
  static $pb.PbList<GetTodoListRequest> createRepeated() => $pb.PbList<GetTodoListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTodoListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTodoListRequest>(create);
  static GetTodoListRequest _defaultInstance;
}

class GetTodoListReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTodoListReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..pc<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todoList', $pb.PbFieldType.PM, protoName: 'todoList', subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  GetTodoListReply._() : super();
  factory GetTodoListReply() => create();
  factory GetTodoListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTodoListReply clone() => GetTodoListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTodoListReply copyWith(void Function(GetTodoListReply) updates) => super.copyWith((message) => updates(message as GetTodoListReply)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTodoListReply create() => GetTodoListReply._();
  GetTodoListReply createEmptyInstance() => create();
  static $pb.PbList<GetTodoListReply> createRepeated() => $pb.PbList<GetTodoListReply>();
  @$core.pragma('dart2js:noInline')
  static GetTodoListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTodoListReply>(create);
  static GetTodoListReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Todo> get todoList => $_getList(0);
}

class UpdateTodoTitleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateTodoTitleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  UpdateTodoTitleRequest._() : super();
  factory UpdateTodoTitleRequest() => create();
  factory UpdateTodoTitleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTodoTitleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTodoTitleRequest clone() => UpdateTodoTitleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTodoTitleRequest copyWith(void Function(UpdateTodoTitleRequest) updates) => super.copyWith((message) => updates(message as UpdateTodoTitleRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateTodoTitleRequest create() => UpdateTodoTitleRequest._();
  UpdateTodoTitleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTodoTitleRequest> createRepeated() => $pb.PbList<UpdateTodoTitleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTodoTitleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTodoTitleRequest>(create);
  static UpdateTodoTitleRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class UpdateTodoTitleReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateTodoTitleReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateTodoTitleReply._() : super();
  factory UpdateTodoTitleReply() => create();
  factory UpdateTodoTitleReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTodoTitleReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTodoTitleReply clone() => UpdateTodoTitleReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTodoTitleReply copyWith(void Function(UpdateTodoTitleReply) updates) => super.copyWith((message) => updates(message as UpdateTodoTitleReply)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateTodoTitleReply create() => UpdateTodoTitleReply._();
  UpdateTodoTitleReply createEmptyInstance() => create();
  static $pb.PbList<UpdateTodoTitleReply> createRepeated() => $pb.PbList<UpdateTodoTitleReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateTodoTitleReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTodoTitleReply>(create);
  static UpdateTodoTitleReply _defaultInstance;
}

class DoneTodoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoneTodoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DoneTodoRequest._() : super();
  factory DoneTodoRequest() => create();
  factory DoneTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoneTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoneTodoRequest clone() => DoneTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoneTodoRequest copyWith(void Function(DoneTodoRequest) updates) => super.copyWith((message) => updates(message as DoneTodoRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoneTodoRequest create() => DoneTodoRequest._();
  DoneTodoRequest createEmptyInstance() => create();
  static $pb.PbList<DoneTodoRequest> createRepeated() => $pb.PbList<DoneTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static DoneTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoneTodoRequest>(create);
  static DoneTodoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DoneTodoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoneTodoReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DoneTodoReply._() : super();
  factory DoneTodoReply() => create();
  factory DoneTodoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoneTodoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoneTodoReply clone() => DoneTodoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoneTodoReply copyWith(void Function(DoneTodoReply) updates) => super.copyWith((message) => updates(message as DoneTodoReply)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoneTodoReply create() => DoneTodoReply._();
  DoneTodoReply createEmptyInstance() => create();
  static $pb.PbList<DoneTodoReply> createRepeated() => $pb.PbList<DoneTodoReply>();
  @$core.pragma('dart2js:noInline')
  static DoneTodoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoneTodoReply>(create);
  static DoneTodoReply _defaultInstance;
}

class UnDoneTodoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnDoneTodoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  UnDoneTodoRequest._() : super();
  factory UnDoneTodoRequest() => create();
  factory UnDoneTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnDoneTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnDoneTodoRequest clone() => UnDoneTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnDoneTodoRequest copyWith(void Function(UnDoneTodoRequest) updates) => super.copyWith((message) => updates(message as UnDoneTodoRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnDoneTodoRequest create() => UnDoneTodoRequest._();
  UnDoneTodoRequest createEmptyInstance() => create();
  static $pb.PbList<UnDoneTodoRequest> createRepeated() => $pb.PbList<UnDoneTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static UnDoneTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnDoneTodoRequest>(create);
  static UnDoneTodoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UnDoneTodoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnDoneTodoReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnDoneTodoReply._() : super();
  factory UnDoneTodoReply() => create();
  factory UnDoneTodoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnDoneTodoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnDoneTodoReply clone() => UnDoneTodoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnDoneTodoReply copyWith(void Function(UnDoneTodoReply) updates) => super.copyWith((message) => updates(message as UnDoneTodoReply)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnDoneTodoReply create() => UnDoneTodoReply._();
  UnDoneTodoReply createEmptyInstance() => create();
  static $pb.PbList<UnDoneTodoReply> createRepeated() => $pb.PbList<UnDoneTodoReply>();
  @$core.pragma('dart2js:noInline')
  static UnDoneTodoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnDoneTodoReply>(create);
  static UnDoneTodoReply _defaultInstance;
}

class DeleteTodoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteTodoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteTodoRequest._() : super();
  factory DeleteTodoRequest() => create();
  factory DeleteTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTodoRequest clone() => DeleteTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTodoRequest copyWith(void Function(DeleteTodoRequest) updates) => super.copyWith((message) => updates(message as DeleteTodoRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteTodoRequest create() => DeleteTodoRequest._();
  DeleteTodoRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTodoRequest> createRepeated() => $pb.PbList<DeleteTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTodoRequest>(create);
  static DeleteTodoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteTodoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteTodoReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteTodoReply._() : super();
  factory DeleteTodoReply() => create();
  factory DeleteTodoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTodoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTodoReply clone() => DeleteTodoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTodoReply copyWith(void Function(DeleteTodoReply) updates) => super.copyWith((message) => updates(message as DeleteTodoReply)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteTodoReply create() => DeleteTodoReply._();
  DeleteTodoReply createEmptyInstance() => create();
  static $pb.PbList<DeleteTodoReply> createRepeated() => $pb.PbList<DeleteTodoReply>();
  @$core.pragma('dart2js:noInline')
  static DeleteTodoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTodoReply>(create);
  static DeleteTodoReply _defaultInstance;
}

