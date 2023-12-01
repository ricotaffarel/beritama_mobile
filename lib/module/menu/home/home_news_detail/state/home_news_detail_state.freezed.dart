
part of 'home_news_detail_state.dart';



T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNewsDetailState {
  bool get seeMore => throw _privateConstructorUsedError;
  set seeMore(bool value) => throw _privateConstructorUsedError;

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
  $Res call({bool seeMore});
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
  }) {
    return _then(_value.copyWith(
      seeMore: null == seeMore
          ? _value.seeMore
          : seeMore // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool seeMore});
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
  }) {
    return _then(_$HomeNewsDetailStateImpl(
      seeMore: null == seeMore
          ? _value.seeMore
          : seeMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeNewsDetailStateImpl implements _HomeNewsDetailState {
  _$HomeNewsDetailStateImpl({this.seeMore = false});

  @override
  @JsonKey()
  bool seeMore;

  @override
  String toString() {
    return 'HomeNewsDetailState(seeMore: $seeMore)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewsDetailStateImplCopyWith<_$HomeNewsDetailStateImpl> get copyWith =>
      __$$HomeNewsDetailStateImplCopyWithImpl<_$HomeNewsDetailStateImpl>(
          this, _$identity);
}

abstract class _HomeNewsDetailState implements HomeNewsDetailState {
  factory _HomeNewsDetailState({bool seeMore}) = _$HomeNewsDetailStateImpl;

  @override
  bool get seeMore;
  set seeMore(bool value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNewsDetailStateImplCopyWith<_$HomeNewsDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
