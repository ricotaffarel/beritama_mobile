// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_news_with_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNewsWithCategoryState {
  List<HomeNewsWithCategoryModel> get category =>
      throw _privateConstructorUsedError;
  set category(List<HomeNewsWithCategoryModel> value) =>
      throw _privateConstructorUsedError;
  List<HomeNewsModel> get news => throw _privateConstructorUsedError;
  set news(List<HomeNewsModel> value) => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNewsWithCategoryStateCopyWith<HomeNewsWithCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewsWithCategoryStateCopyWith<$Res> {
  factory $HomeNewsWithCategoryStateCopyWith(HomeNewsWithCategoryState value,
          $Res Function(HomeNewsWithCategoryState) then) =
      _$HomeNewsWithCategoryStateCopyWithImpl<$Res, HomeNewsWithCategoryState>;
  @useResult
  $Res call(
      {List<HomeNewsWithCategoryModel> category,
      List<HomeNewsModel> news,
      bool loading});
}

/// @nodoc
class _$HomeNewsWithCategoryStateCopyWithImpl<$Res,
        $Val extends HomeNewsWithCategoryState>
    implements $HomeNewsWithCategoryStateCopyWith<$Res> {
  _$HomeNewsWithCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? news = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<HomeNewsWithCategoryModel>,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<HomeNewsModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeNewsWithCategoryStateImplCopyWith<$Res>
    implements $HomeNewsWithCategoryStateCopyWith<$Res> {
  factory _$$HomeNewsWithCategoryStateImplCopyWith(
          _$HomeNewsWithCategoryStateImpl value,
          $Res Function(_$HomeNewsWithCategoryStateImpl) then) =
      __$$HomeNewsWithCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeNewsWithCategoryModel> category,
      List<HomeNewsModel> news,
      bool loading});
}

/// @nodoc
class __$$HomeNewsWithCategoryStateImplCopyWithImpl<$Res>
    extends _$HomeNewsWithCategoryStateCopyWithImpl<$Res,
        _$HomeNewsWithCategoryStateImpl>
    implements _$$HomeNewsWithCategoryStateImplCopyWith<$Res> {
  __$$HomeNewsWithCategoryStateImplCopyWithImpl(
      _$HomeNewsWithCategoryStateImpl _value,
      $Res Function(_$HomeNewsWithCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? news = null,
    Object? loading = null,
  }) {
    return _then(_$HomeNewsWithCategoryStateImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<HomeNewsWithCategoryModel>,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<HomeNewsModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeNewsWithCategoryStateImpl implements _HomeNewsWithCategoryState {
  _$HomeNewsWithCategoryStateImpl(
      {this.category = const [], this.news = const [], this.loading = false});

  @override
  @JsonKey()
  List<HomeNewsWithCategoryModel> category;
  @override
  @JsonKey()
  List<HomeNewsModel> news;
  @override
  @JsonKey()
  bool loading;

  @override
  String toString() {
    return 'HomeNewsWithCategoryState(category: $category, news: $news, loading: $loading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewsWithCategoryStateImplCopyWith<_$HomeNewsWithCategoryStateImpl>
      get copyWith => __$$HomeNewsWithCategoryStateImplCopyWithImpl<
          _$HomeNewsWithCategoryStateImpl>(this, _$identity);
}

abstract class _HomeNewsWithCategoryState implements HomeNewsWithCategoryState {
  factory _HomeNewsWithCategoryState(
      {List<HomeNewsWithCategoryModel> category,
      List<HomeNewsModel> news,
      bool loading}) = _$HomeNewsWithCategoryStateImpl;

  @override
  List<HomeNewsWithCategoryModel> get category;
  set category(List<HomeNewsWithCategoryModel> value);
  @override
  List<HomeNewsModel> get news;
  set news(List<HomeNewsModel> value);
  @override
  bool get loading;
  set loading(bool value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNewsWithCategoryStateImplCopyWith<_$HomeNewsWithCategoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
