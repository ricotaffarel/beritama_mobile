
part of 'home_news_search_state.dart';



T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeNewsSearchState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

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
  $Res call({int counter});
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
abstract class _$$HomeNewsSearchStateImplCopyWith<$Res>
    implements $HomeNewsSearchStateCopyWith<$Res> {
  factory _$$HomeNewsSearchStateImplCopyWith(_$HomeNewsSearchStateImpl value,
          $Res Function(_$HomeNewsSearchStateImpl) then) =
      __$$HomeNewsSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
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
    Object? counter = null,
  }) {
    return _then(_$HomeNewsSearchStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeNewsSearchStateImpl implements _HomeNewsSearchState {
  _$HomeNewsSearchStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'HomeNewsSearchState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewsSearchStateImplCopyWith<_$HomeNewsSearchStateImpl> get copyWith =>
      __$$HomeNewsSearchStateImplCopyWithImpl<_$HomeNewsSearchStateImpl>(
          this, _$identity);
}

abstract class _HomeNewsSearchState implements HomeNewsSearchState {
  factory _HomeNewsSearchState({int counter}) = _$HomeNewsSearchStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$HomeNewsSearchStateImplCopyWith<_$HomeNewsSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
