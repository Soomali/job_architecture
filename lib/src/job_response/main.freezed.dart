// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobResponse<T> {
  String get id => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  JobResponseStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobResponseCopyWith<T, JobResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobResponseCopyWith<T, $Res> {
  factory $JobResponseCopyWith(
          JobResponse<T> value, $Res Function(JobResponse<T>) then) =
      _$JobResponseCopyWithImpl<T, $Res, JobResponse<T>>;
  @useResult
  $Res call({String id, T? result, String? error, JobResponseStatus status});
}

/// @nodoc
class _$JobResponseCopyWithImpl<T, $Res, $Val extends JobResponse<T>>
    implements $JobResponseCopyWith<T, $Res> {
  _$JobResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? result = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobResponseStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobResponseCopyWith<T, $Res>
    implements $JobResponseCopyWith<T, $Res> {
  factory _$$_JobResponseCopyWith(
          _$_JobResponse<T> value, $Res Function(_$_JobResponse<T>) then) =
      __$$_JobResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String id, T? result, String? error, JobResponseStatus status});
}

/// @nodoc
class __$$_JobResponseCopyWithImpl<T, $Res>
    extends _$JobResponseCopyWithImpl<T, $Res, _$_JobResponse<T>>
    implements _$$_JobResponseCopyWith<T, $Res> {
  __$$_JobResponseCopyWithImpl(
      _$_JobResponse<T> _value, $Res Function(_$_JobResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? result = freezed,
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_$_JobResponse<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobResponseStatus,
    ));
  }
}

/// @nodoc

class _$_JobResponse<T> implements _JobResponse<T> {
  _$_JobResponse(
      {required this.id, this.result, this.error, required this.status});

  @override
  final String id;
  @override
  final T? result;
  @override
  final String? error;
  @override
  final JobResponseStatus status;

  @override
  String toString() {
    return 'JobResponse<$T>(id: $id, result: $result, error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobResponse<T> &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(result), error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobResponseCopyWith<T, _$_JobResponse<T>> get copyWith =>
      __$$_JobResponseCopyWithImpl<T, _$_JobResponse<T>>(this, _$identity);
}

abstract class _JobResponse<T> implements JobResponse<T> {
  factory _JobResponse(
      {required final String id,
      final T? result,
      final String? error,
      required final JobResponseStatus status}) = _$_JobResponse<T>;

  @override
  String get id;
  @override
  T? get result;
  @override
  String? get error;
  @override
  JobResponseStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_JobResponseCopyWith<T, _$_JobResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
