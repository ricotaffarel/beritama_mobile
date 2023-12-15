// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_news_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNewsDetailState {
  bool get seeMore => throw _privateConstructorUsedError;
  set seeMore(bool value) => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;
  List<HomeNewsModel> get news => throw _privateConstructorUsedError;
  set news(List<HomeNewsModel> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNewsDetailStateCopyWith<HomeNewsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewsDetailStateCopyWith<$Res> {
  factory $HomeNewsDetailStateCopyWith(
          HomeNewsDetailState value, $Res Function(HomeNewsDetailState) then) =
      _$HomeNewsDetailStateCopyWithImpl<$Res, HomeNewsDetailState>;
  @useResult
  $Res call({bool seeMore, bool loading, List<HomeNewsModel> news});
}

/// @nodoc
class _$HomeNewsDetailStateCopyWithImpl<$Res, $Val extends HomeNewsDetailState>
    implements $HomeNewsDetailStateCopyWith<$Res> {
  _$HomeNewsDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seeMore = null,
    Object? loading = null,
    Object? news = null,
  }) {
    return _then(_value.copyWith(
      seeMore: null == seeMore
          ? _value.seeMore
          : seeMore // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<HomeNewsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeNewsDetailStateImplCopyWith<$Res>
    implements $HomeNewsDetailStateCopyWith<$Res> {
  factory _$$HomeNewsDetailStateImplCopyWith(_$HomeNewsDetailStateImpl value,
          $Res Function(_$HomeNewsDetailStateImpl) then) =
      __$$HomeNewsDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool seeMore, bool loading, List<HomeNewsModel> news});
}

/// @nodoc
class __$$HomeNewsDetailStateImplCopyWithImpl<$Res>
    extends _$HomeNewsDetailStateCopyWithImpl<$Res, _$HomeNewsDetailStateImpl>
    implements _$$HomeNewsDetailStateImplCopyWith<$Res> {
  __$$HomeNewsDetailStateImplCopyWithImpl(_$HomeNewsDetailStateImpl _value,
      $Res Function(_$HomeNewsDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seeMore = null,
    Object? loading = null,
    Object? news = null,
  }) {
    return _then(_$HomeNewsDetailStateImpl(
      seeMore: null == seeMore
          ? _value.seeMore
          : seeMore // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<HomeNewsModel>,
    ));
  }
}

/// @nodoc

class _$HomeNewsDetailStateImpl implements _HomeNewsDetailState {
  _$HomeNewsDetailStateImpl(
      {this.seeMore = false, this.loading = false, this.news = const []});

  @override
  @JsonKey()
  bool seeMore;
  @override
  @JsonKey()
  bool loading;
  @override
  @JsonKey()
  List<HomeNewsModel> news;

  @override
  String toString() {
    return 'HomeNewsDetailState(seeMore: $seeMore, loading: $loading, news: $news)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewsDetailStateImplCopyWith<_$HomeNewsDetailStateImpl> get copyWith =>
      __$$HomeNewsDetailStateImplCopyWithImpl<_$HomeNewsDetailStateImpl>(
          this, _$identity);
}

abstract class _HomeNewsDetailState implements HomeNewsDetailState {
  factory _HomeNewsDetailState(
      {bool seeMore,
      bool loading,
      List<HomeNewsModel> news}) = _$HomeNewsDetailStateImpl;

  @override
  bool get seeMore;
  set seeMore(bool value);
  @override
  bool get loading;
  set loading(bool value);
  @override
  List<HomeNewsModel> get news;
  set news(List<HomeNewsModel> value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNewsDetailStateImplCopyWith<_$HomeNewsDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
