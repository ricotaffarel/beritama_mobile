// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_news_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNewsSearchState {
  String get search => throw _privateConstructorUsedError;
  set search(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNewsSearchStateCopyWith<HomeNewsSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewsSearchStateCopyWith<$Res> {
  factory $HomeNewsSearchStateCopyWith(
          HomeNewsSearchState value, $Res Function(HomeNewsSearchState) then) =
      _$HomeNewsSearchStateCopyWithImpl<$Res, HomeNewsSearchState>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$HomeNewsSearchStateCopyWithImpl<$Res, $Val extends HomeNewsSearchState>
    implements $HomeNewsSearchStateCopyWith<$Res> {
  _$HomeNewsSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeNewsSearchStateImplCopyWith<$Res>
    implements $HomeNewsSearchStateCopyWith<$Res> {
  factory _$$HomeNewsSearchStateImplCopyWith(_$HomeNewsSearchStateImpl value,
          $Res Function(_$HomeNewsSearchStateImpl) then) =
      __$$HomeNewsSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$HomeNewsSearchStateImplCopyWithImpl<$Res>
    extends _$HomeNewsSearchStateCopyWithImpl<$Res, _$HomeNewsSearchStateImpl>
    implements _$$HomeNewsSearchStateImplCopyWith<$Res> {
  __$$HomeNewsSearchStateImplCopyWithImpl(_$HomeNewsSearchStateImpl _value,
      $Res Function(_$HomeNewsSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$HomeNewsSearchStateImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeNewsSearchStateImpl implements _HomeNewsSearchState {
  _$HomeNewsSearchStateImpl({this.search = ""});

  @override
  @JsonKey()
  String search;

  @override
  String toString() {
    return 'HomeNewsSearchState(search: $search)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewsSearchStateImplCopyWith<_$HomeNewsSearchStateImpl> get copyWith =>
      __$$HomeNewsSearchStateImplCopyWithImpl<_$HomeNewsSearchStateImpl>(
          this, _$identity);
}

abstract class _HomeNewsSearchState implements HomeNewsSearchState {
  factory _HomeNewsSearchState({String search}) = _$HomeNewsSearchStateImpl;

  @override
  String get search;
  set search(String value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNewsSearchStateImplCopyWith<_$HomeNewsSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
