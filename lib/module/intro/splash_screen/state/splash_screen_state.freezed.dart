
part of 'splash_screen_state.dart';



T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashScreenState {
  bool get splash_screen => throw _privateConstructorUsedError;
  set splash_screen(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashScreenStateCopyWith<SplashScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenStateCopyWith(
          SplashScreenState value, $Res Function(SplashScreenState) then) =
      _$SplashScreenStateCopyWithImpl<$Res, SplashScreenState>;
  @useResult
  $Res call({bool splash_screen});
}

/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res, $Val extends SplashScreenState>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splash_screen = null,
  }) {
    return _then(_value.copyWith(
      splash_screen: null == splash_screen
          ? _value.splash_screen
          : splash_screen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashScreenStateImplCopyWith<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  factory _$$SplashScreenStateImplCopyWith(_$SplashScreenStateImpl value,
          $Res Function(_$SplashScreenStateImpl) then) =
      __$$SplashScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool splash_screen});
}

/// @nodoc
class __$$SplashScreenStateImplCopyWithImpl<$Res>
    extends _$SplashScreenStateCopyWithImpl<$Res, _$SplashScreenStateImpl>
    implements _$$SplashScreenStateImplCopyWith<$Res> {
  __$$SplashScreenStateImplCopyWithImpl(_$SplashScreenStateImpl _value,
      $Res Function(_$SplashScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splash_screen = null,
  }) {
    return _then(_$SplashScreenStateImpl(
      splash_screen: null == splash_screen
          ? _value.splash_screen
          : splash_screen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SplashScreenStateImpl implements _SplashScreenState {
  _$SplashScreenStateImpl({this.splash_screen = false});

  @override
  @JsonKey()
  bool splash_screen;

  @override
  String toString() {
    return 'SplashScreenState(splash_screen: $splash_screen)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashScreenStateImplCopyWith<_$SplashScreenStateImpl> get copyWith =>
      __$$SplashScreenStateImplCopyWithImpl<_$SplashScreenStateImpl>(
          this, _$identity);
}

abstract class _SplashScreenState implements SplashScreenState {
  factory _SplashScreenState({bool splash_screen}) = _$SplashScreenStateImpl;

  @override
  bool get splash_screen;
  set splash_screen(bool value);
  @override
  @JsonKey(ignore: true)
  _$$SplashScreenStateImplCopyWith<_$SplashScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
