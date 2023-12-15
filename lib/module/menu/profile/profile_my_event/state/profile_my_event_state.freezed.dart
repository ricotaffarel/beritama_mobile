// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_my_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileMyEventState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileMyEventStateCopyWith<ProfileMyEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileMyEventStateCopyWith<$Res> {
  factory $ProfileMyEventStateCopyWith(
          ProfileMyEventState value, $Res Function(ProfileMyEventState) then) =
      _$ProfileMyEventStateCopyWithImpl<$Res, ProfileMyEventState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$ProfileMyEventStateCopyWithImpl<$Res, $Val extends ProfileMyEventState>
    implements $ProfileMyEventStateCopyWith<$Res> {
  _$ProfileMyEventStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfileMyEventStateImplCopyWith<$Res>
    implements $ProfileMyEventStateCopyWith<$Res> {
  factory _$$ProfileMyEventStateImplCopyWith(_$ProfileMyEventStateImpl value,
          $Res Function(_$ProfileMyEventStateImpl) then) =
      __$$ProfileMyEventStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$ProfileMyEventStateImplCopyWithImpl<$Res>
    extends _$ProfileMyEventStateCopyWithImpl<$Res, _$ProfileMyEventStateImpl>
    implements _$$ProfileMyEventStateImplCopyWith<$Res> {
  __$$ProfileMyEventStateImplCopyWithImpl(_$ProfileMyEventStateImpl _value,
      $Res Function(_$ProfileMyEventStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$ProfileMyEventStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProfileMyEventStateImpl implements _ProfileMyEventState {
  _$ProfileMyEventStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'ProfileMyEventState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileMyEventStateImplCopyWith<_$ProfileMyEventStateImpl> get copyWith =>
      __$$ProfileMyEventStateImplCopyWithImpl<_$ProfileMyEventStateImpl>(
          this, _$identity);
}

abstract class _ProfileMyEventState implements ProfileMyEventState {
  factory _ProfileMyEventState({int counter}) = _$ProfileMyEventStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$ProfileMyEventStateImplCopyWith<_$ProfileMyEventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
