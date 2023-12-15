// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNotificationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNotificationStateCopyWith<HomeNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNotificationStateCopyWith<$Res> {
  factory $HomeNotificationStateCopyWith(HomeNotificationState value,
          $Res Function(HomeNotificationState) then) =
      _$HomeNotificationStateCopyWithImpl<$Res, HomeNotificationState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$HomeNotificationStateCopyWithImpl<$Res,
        $Val extends HomeNotificationState>
    implements $HomeNotificationStateCopyWith<$Res> {
  _$HomeNotificationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeNotificationStateImplCopyWith<$Res>
    implements $HomeNotificationStateCopyWith<$Res> {
  factory _$$HomeNotificationStateImplCopyWith(
          _$HomeNotificationStateImpl value,
          $Res Function(_$HomeNotificationStateImpl) then) =
      __$$HomeNotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$HomeNotificationStateImplCopyWithImpl<$Res>
    extends _$HomeNotificationStateCopyWithImpl<$Res,
        _$HomeNotificationStateImpl>
    implements _$$HomeNotificationStateImplCopyWith<$Res> {
  __$$HomeNotificationStateImplCopyWithImpl(_$HomeNotificationStateImpl _value,
      $Res Function(_$HomeNotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$HomeNotificationStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeNotificationStateImpl implements _HomeNotificationState {
  _$HomeNotificationStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'HomeNotificationState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNotificationStateImplCopyWith<_$HomeNotificationStateImpl>
      get copyWith => __$$HomeNotificationStateImplCopyWithImpl<
          _$HomeNotificationStateImpl>(this, _$identity);
}

abstract class _HomeNotificationState implements HomeNotificationState {
  factory _HomeNotificationState({int counter}) = _$HomeNotificationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNotificationStateImplCopyWith<_$HomeNotificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
