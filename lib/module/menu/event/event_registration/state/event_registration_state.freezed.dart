// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventRegistrationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventRegistrationStateCopyWith<EventRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRegistrationStateCopyWith<$Res> {
  factory $EventRegistrationStateCopyWith(EventRegistrationState value,
          $Res Function(EventRegistrationState) then) =
      _$EventRegistrationStateCopyWithImpl<$Res, EventRegistrationState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$EventRegistrationStateCopyWithImpl<$Res,
        $Val extends EventRegistrationState>
    implements $EventRegistrationStateCopyWith<$Res> {
  _$EventRegistrationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$EventRegistrationStateImplCopyWith<$Res>
    implements $EventRegistrationStateCopyWith<$Res> {
  factory _$$EventRegistrationStateImplCopyWith(
          _$EventRegistrationStateImpl value,
          $Res Function(_$EventRegistrationStateImpl) then) =
      __$$EventRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$EventRegistrationStateImplCopyWithImpl<$Res>
    extends _$EventRegistrationStateCopyWithImpl<$Res,
        _$EventRegistrationStateImpl>
    implements _$$EventRegistrationStateImplCopyWith<$Res> {
  __$$EventRegistrationStateImplCopyWithImpl(
      _$EventRegistrationStateImpl _value,
      $Res Function(_$EventRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$EventRegistrationStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EventRegistrationStateImpl implements _EventRegistrationState {
  _$EventRegistrationStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'EventRegistrationState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventRegistrationStateImplCopyWith<_$EventRegistrationStateImpl>
      get copyWith => __$$EventRegistrationStateImplCopyWithImpl<
          _$EventRegistrationStateImpl>(this, _$identity);
}

abstract class _EventRegistrationState implements EventRegistrationState {
  factory _EventRegistrationState({int counter}) = _$EventRegistrationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$EventRegistrationStateImplCopyWith<_$EventRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
