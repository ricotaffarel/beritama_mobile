// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_change_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileChangePasswordState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileChangePasswordStateCopyWith<ProfileChangePasswordState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileChangePasswordStateCopyWith<$Res> {
  factory $ProfileChangePasswordStateCopyWith(ProfileChangePasswordState value,
          $Res Function(ProfileChangePasswordState) then) =
      _$ProfileChangePasswordStateCopyWithImpl<$Res,
          ProfileChangePasswordState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$ProfileChangePasswordStateCopyWithImpl<$Res,
        $Val extends ProfileChangePasswordState>
    implements $ProfileChangePasswordStateCopyWith<$Res> {
  _$ProfileChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileChangePasswordStateImplCopyWith<$Res>
    implements $ProfileChangePasswordStateCopyWith<$Res> {
  factory _$$ProfileChangePasswordStateImplCopyWith(
          _$ProfileChangePasswordStateImpl value,
          $Res Function(_$ProfileChangePasswordStateImpl) then) =
      __$$ProfileChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$ProfileChangePasswordStateImplCopyWithImpl<$Res>
    extends _$ProfileChangePasswordStateCopyWithImpl<$Res,
        _$ProfileChangePasswordStateImpl>
    implements _$$ProfileChangePasswordStateImplCopyWith<$Res> {
  __$$ProfileChangePasswordStateImplCopyWithImpl(
      _$ProfileChangePasswordStateImpl _value,
      $Res Function(_$ProfileChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$ProfileChangePasswordStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProfileChangePasswordStateImpl implements _ProfileChangePasswordState {
  _$ProfileChangePasswordStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'ProfileChangePasswordState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileChangePasswordStateImplCopyWith<_$ProfileChangePasswordStateImpl>
      get copyWith => __$$ProfileChangePasswordStateImplCopyWithImpl<
          _$ProfileChangePasswordStateImpl>(this, _$identity);
}

abstract class _ProfileChangePasswordState
    implements ProfileChangePasswordState {
  factory _ProfileChangePasswordState({int counter}) =
      _$ProfileChangePasswordStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$ProfileChangePasswordStateImplCopyWith<_$ProfileChangePasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
