// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommunityDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityDetailStateCopyWith<CommunityDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityDetailStateCopyWith<$Res> {
  factory $CommunityDetailStateCopyWith(CommunityDetailState value,
          $Res Function(CommunityDetailState) then) =
      _$CommunityDetailStateCopyWithImpl<$Res, CommunityDetailState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CommunityDetailStateCopyWithImpl<$Res,
        $Val extends CommunityDetailState>
    implements $CommunityDetailStateCopyWith<$Res> {
  _$CommunityDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CommunityDetailStateImplCopyWith<$Res>
    implements $CommunityDetailStateCopyWith<$Res> {
  factory _$$CommunityDetailStateImplCopyWith(_$CommunityDetailStateImpl value,
          $Res Function(_$CommunityDetailStateImpl) then) =
      __$$CommunityDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$CommunityDetailStateImplCopyWithImpl<$Res>
    extends _$CommunityDetailStateCopyWithImpl<$Res, _$CommunityDetailStateImpl>
    implements _$$CommunityDetailStateImplCopyWith<$Res> {
  __$$CommunityDetailStateImplCopyWithImpl(_$CommunityDetailStateImpl _value,
      $Res Function(_$CommunityDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$CommunityDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommunityDetailStateImpl implements _CommunityDetailState {
  _$CommunityDetailStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'CommunityDetailState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityDetailStateImplCopyWith<_$CommunityDetailStateImpl>
      get copyWith =>
          __$$CommunityDetailStateImplCopyWithImpl<_$CommunityDetailStateImpl>(
              this, _$identity);
}

abstract class _CommunityDetailState implements CommunityDetailState {
  factory _CommunityDetailState({int counter}) = _$CommunityDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$CommunityDetailStateImplCopyWith<_$CommunityDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
