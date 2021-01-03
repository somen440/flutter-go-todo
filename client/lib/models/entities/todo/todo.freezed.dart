// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

// ignore: unused_element
  _Todo call(
      {@required int id,
      @required String title,
      @required bool done,
      @required DateTime created}) {
    return _Todo(
      id: id,
      title: title,
      done: done,
      created: created,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  int get id;
  String get title;
  bool get done;
  DateTime get created;

  $TodoCopyWith<Todo> get copyWith;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({int id, String title, bool done, DateTime created});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object done = freezed,
    Object created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      done: done == freezed ? _value.done : done as bool,
      created: created == freezed ? _value.created : created as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, bool done, DateTime created});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object done = freezed,
    Object created = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      done: done == freezed ? _value.done : done as bool,
      created: created == freezed ? _value.created : created as DateTime,
    ));
  }
}

/// @nodoc
class _$_Todo with DiagnosticableTreeMixin implements _Todo {
  _$_Todo(
      {@required this.id,
      @required this.title,
      @required this.done,
      @required this.created})
      : assert(id != null),
        assert(title != null),
        assert(done != null),
        assert(created != null);

  @override
  final int id;
  @override
  final String title;
  @override
  final bool done;
  @override
  final DateTime created;

  bool _didcreatedAsString = false;
  String _createdAsString;

  @override
  String get createdAsString {
    if (_didcreatedAsString == false) {
      _didcreatedAsString = true;
      _createdAsString = dateTimeAsJaString(created.toLocal());
    }
    return _createdAsString;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(id: $id, title: $title, done: $done, created: $created, createdAsString: $createdAsString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('done', done))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('createdAsString', createdAsString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(created);

  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);
}

abstract class _Todo implements Todo {
  factory _Todo(
      {@required int id,
      @required String title,
      @required bool done,
      @required DateTime created}) = _$_Todo;

  @override
  int get id;
  @override
  String get title;
  @override
  bool get done;
  @override
  DateTime get created;
  @override
  _$TodoCopyWith<_Todo> get copyWith;
}
