// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_news_detail2_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNewsDetail2State {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  bool get seeMore => throw _privateConstructorUsedError;
  set seeMore(bool value) => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNewsDetail2StateCopyWith<HomeNewsDetail2State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewsDetail2StateCopyWith<$Res> {
  factory $HomeNewsDetail2StateCopyWith(HomeNewsDetail2State value,
          $Res Function(HomeNewsDetail2State) then) =
      _$HomeNewsDetail2StateCopyWithImpl<$Res, HomeNewsDetail2State>;
  @useResult
  $Res call({int counter, bool seeMore, bool loading});
}

/// @nodoc
class _$HomeNewsDetail2StateCopyWithImpl<$Res,
        $Val extends HomeNewsDetail2State>
    implements $HomeNewsDetail2StateCopyWith<$Res> {
  _$HomeNewsDetail2StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? seeMore = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      seeMore: null == seeMore
          ? _value.seeMore
          : seeMore // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeNewsDetail2StateImplCopyWith<$Res>
    implements $HomeNewsDetail2StateCopyWith<$Res> {
  factory _$$HomeNewsDetail2StateImplCopyWith(_$HomeNewsDetail2StateImpl value,
          $Res Function(_$HomeNewsDetail2StateImpl) then) =
      __$$HomeNewsDetail2StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, bool seeMore, bool loading});
}

/// @nodoc
class __$$HomeNewsDetail2StateImplCopyWithImpl<$Res>
    extends _$HomeNewsDetail2StateCopyWithImpl<$Res, _$HomeNewsDetail2StateImpl>
    implements _$$HomeNewsDetail2StateImplCopyWith<$Res> {
  __$$HomeNewsDetail2StateImplCopyWithImpl(_$HomeNewsDetail2StateImpl _value,
      $Res Function(_$HomeNewsDetail2StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? seeMore = null,
    Object? loading = null,
  }) {
    return _then(_$HomeNewsDetail2StateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      seeMore: null == seeMore
          ? _value.seeMore
          : seeMore // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeNewsDetail2StateImpl implements _HomeNewsDetail2State {
  _$HomeNewsDetail2StateImpl(
      {this.counter = 0, this.seeMore = false, this.loading = false});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  bool seeMore;
  @override
  @JsonKey()
  bool loading;

  @override
  String toString() {
    return 'HomeNewsDetail2State(counter: $counter, seeMore: $seeMore, loading: $loading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewsDetail2StateImplCopyWith<_$HomeNewsDetail2StateImpl>
      get copyWith =>
          __$$HomeNewsDetail2StateImplCopyWithImpl<_$HomeNewsDetail2StateImpl>(
              this, _$identity);
}

abstract class _HomeNewsDetail2State implements HomeNewsDetail2State {
  factory _HomeNewsDetail2State({int counter, bool seeMore, bool loading}) =
      _$HomeNewsDetail2StateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  bool get seeMore;
  set seeMore(bool value);
  @override
  bool get loading;
  set loading(bool value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNewsDetail2StateImplCopyWith<_$HomeNewsDetail2StateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
