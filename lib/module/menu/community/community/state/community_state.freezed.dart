
part of 'community_state.dart';



T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommunityState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityStateCopyWith<CommunityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityStateCopyWith<$Res> {
  factory $CommunityStateCopyWith(
          CommunityState value, $Res Function(CommunityState) then) =
      _$CommunityStateCopyWithImpl<$Res, CommunityState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CommunityStateCopyWithImpl<$Res, $Val extends CommunityState>
    implements $CommunityStateCopyWith<$Res> {
  _$CommunityStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CommunityStateImplCopyWith<$Res>
    implements $CommunityStateCopyWith<$Res> {
  factory _$$CommunityStateImplCopyWith(_$CommunityStateImpl value,
          $Res Function(_$CommunityStateImpl) then) =
      __$$CommunityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$CommunityStateImplCopyWithImpl<$Res>
    extends _$CommunityStateCopyWithImpl<$Res, _$CommunityStateImpl>
    implements _$$CommunityStateImplCopyWith<$Res> {
  __$$CommunityStateImplCopyWithImpl(
      _$CommunityStateImpl _value, $Res Function(_$CommunityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$CommunityStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommunityStateImpl implements _CommunityState {
  _$CommunityStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'CommunityState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityStateImplCopyWith<_$CommunityStateImpl> get copyWith =>
      __$$CommunityStateImplCopyWithImpl<_$CommunityStateImpl>(
          this, _$identity);
}

abstract class _CommunityState implements CommunityState {
  factory _CommunityState({int counter}) = _$CommunityStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$CommunityStateImplCopyWith<_$CommunityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
