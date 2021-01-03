// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoListStateTearOff {
  const _$TodoListStateTearOff();

// ignore: unused_element
  _TodoListState call(
      {List<Todo> todoList = const <Todo>[], bool isLoading = true}) {
    return _TodoListState(
      todoList: todoList,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoListState = _$TodoListStateTearOff();

/// @nodoc
mixin _$TodoListState {
  List<Todo> get todoList;
  bool get isLoading;

  $TodoListStateCopyWith<TodoListState> get copyWith;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todoList, bool isLoading});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;

  @override
  $Res call({
    Object todoList = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      todoList: todoList == freezed ? _value.todoList : todoList as List<Todo>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(
          _TodoListState value, $Res Function(_TodoListState) then) =
      __$TodoListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todoList, bool isLoading});
}

/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(
      _TodoListState _value, $Res Function(_TodoListState) _then)
      : super(_value, (v) => _then(v as _TodoListState));

  @override
  _TodoListState get _value => super._value as _TodoListState;

  @override
  $Res call({
    Object todoList = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_TodoListState(
      todoList: todoList == freezed ? _value.todoList : todoList as List<Todo>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_TodoListState extends _TodoListState {
  _$_TodoListState({this.todoList = const <Todo>[], this.isLoading = true})
      : assert(todoList != null),
        assert(isLoading != null),
        super._();

  @JsonKey(defaultValue: const <Todo>[])
  @override
  final List<Todo> todoList;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  bool _did_map = false;
  Map<int, Todo> __map;

  @override
  Map<int, Todo> get _map {
    if (_did_map == false) {
      _did_map = true;
      __map = Map.fromEntries(
        todoList.map((t) => MapEntry(t.id, t)),
      );
    }
    return __map;
  }

  bool _didids = false;
  List<int> _ids;

  @override
  List<int> get ids {
    if (_didids == false) {
      _didids = true;
      _ids = todoList.map((e) => e.id).toList();
    }
    return _ids;
  }

  @override
  String toString() {
    return 'TodoListState(todoList: $todoList, isLoading: $isLoading, _map: $_map, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoListState &&
            (identical(other.todoList, todoList) ||
                const DeepCollectionEquality()
                    .equals(other.todoList, todoList)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todoList) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);
}

abstract class _TodoListState extends TodoListState {
  _TodoListState._() : super._();
  factory _TodoListState({List<Todo> todoList, bool isLoading}) =
      _$_TodoListState;

  @override
  List<Todo> get todoList;
  @override
  bool get isLoading;
  @override
  _$TodoListStateCopyWith<_TodoListState> get copyWith;
}
