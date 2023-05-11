// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password)
        fetchSummaryAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)?
        fetchSummaryAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)?
        fetchSummaryAuthorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderSummaryEventAuthorization value)
        fetchSummaryAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderSummaryEventAuthorization value)?
        fetchSummaryAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderSummaryEventAuthorization value)?
        fetchSummaryAuthorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationEventCopyWith<AuthorizationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderSummaryEventAuthorizationCopyWith<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  factory _$$_OrderSummaryEventAuthorizationCopyWith(
          _$_OrderSummaryEventAuthorization value,
          $Res Function(_$_OrderSummaryEventAuthorization) then) =
      __$$_OrderSummaryEventAuthorizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_OrderSummaryEventAuthorizationCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res,
        _$_OrderSummaryEventAuthorization>
    implements _$$_OrderSummaryEventAuthorizationCopyWith<$Res> {
  __$$_OrderSummaryEventAuthorizationCopyWithImpl(
      _$_OrderSummaryEventAuthorization _value,
      $Res Function(_$_OrderSummaryEventAuthorization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_OrderSummaryEventAuthorization(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OrderSummaryEventAuthorization
    implements _OrderSummaryEventAuthorization {
  const _$_OrderSummaryEventAuthorization(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthorizationEvent.fetchSummaryAuthorization(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryEventAuthorization &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSummaryEventAuthorizationCopyWith<_$_OrderSummaryEventAuthorization>
      get copyWith => __$$_OrderSummaryEventAuthorizationCopyWithImpl<
          _$_OrderSummaryEventAuthorization>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password)
        fetchSummaryAuthorization,
  }) {
    return fetchSummaryAuthorization(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)?
        fetchSummaryAuthorization,
  }) {
    return fetchSummaryAuthorization?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)?
        fetchSummaryAuthorization,
    required TResult orElse(),
  }) {
    if (fetchSummaryAuthorization != null) {
      return fetchSummaryAuthorization(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderSummaryEventAuthorization value)
        fetchSummaryAuthorization,
  }) {
    return fetchSummaryAuthorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderSummaryEventAuthorization value)?
        fetchSummaryAuthorization,
  }) {
    return fetchSummaryAuthorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderSummaryEventAuthorization value)?
        fetchSummaryAuthorization,
    required TResult orElse(),
  }) {
    if (fetchSummaryAuthorization != null) {
      return fetchSummaryAuthorization(this);
    }
    return orElse();
  }
}

abstract class _OrderSummaryEventAuthorization implements AuthorizationEvent {
  const factory _OrderSummaryEventAuthorization(
          final String username, final String password) =
      _$_OrderSummaryEventAuthorization;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSummaryEventAuthorizationCopyWith<_$_OrderSummaryEventAuthorization>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAuthorization,
    required TResult Function(AuthorizationResponse summaryAuthorization)
        contentAuthorization,
    required TResult Function(dynamic err) errorAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingAuthorization,
    TResult? Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult? Function(dynamic err)? errorAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAuthorization,
    TResult Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult Function(dynamic err)? errorAuthorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderSummaryLoadingAuthorization value)
        loadingAuthorization,
    required TResult Function(_OrderSummaryContentAuthorization value)
        contentAuthorization,
    required TResult Function(_OrderSummaryErrorAuthorization value)
        errorAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult? Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult? Function(_OrderSummaryErrorAuthorization value)?
        errorAuthorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult Function(_OrderSummaryErrorAuthorization value)? errorAuthorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthorizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAuthorization,
    required TResult Function(AuthorizationResponse summaryAuthorization)
        contentAuthorization,
    required TResult Function(dynamic err) errorAuthorization,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingAuthorization,
    TResult? Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult? Function(dynamic err)? errorAuthorization,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAuthorization,
    TResult Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult Function(dynamic err)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderSummaryLoadingAuthorization value)
        loadingAuthorization,
    required TResult Function(_OrderSummaryContentAuthorization value)
        contentAuthorization,
    required TResult Function(_OrderSummaryErrorAuthorization value)
        errorAuthorization,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult? Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult? Function(_OrderSummaryErrorAuthorization value)?
        errorAuthorization,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult Function(_OrderSummaryErrorAuthorization value)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthorizationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OrderSummaryLoadingAuthorizationCopyWith<$Res> {
  factory _$$_OrderSummaryLoadingAuthorizationCopyWith(
          _$_OrderSummaryLoadingAuthorization value,
          $Res Function(_$_OrderSummaryLoadingAuthorization) then) =
      __$$_OrderSummaryLoadingAuthorizationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OrderSummaryLoadingAuthorizationCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$_OrderSummaryLoadingAuthorization>
    implements _$$_OrderSummaryLoadingAuthorizationCopyWith<$Res> {
  __$$_OrderSummaryLoadingAuthorizationCopyWithImpl(
      _$_OrderSummaryLoadingAuthorization _value,
      $Res Function(_$_OrderSummaryLoadingAuthorization) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OrderSummaryLoadingAuthorization
    implements _OrderSummaryLoadingAuthorization {
  const _$_OrderSummaryLoadingAuthorization();

  @override
  String toString() {
    return 'AuthorizationState.loadingAuthorization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryLoadingAuthorization);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAuthorization,
    required TResult Function(AuthorizationResponse summaryAuthorization)
        contentAuthorization,
    required TResult Function(dynamic err) errorAuthorization,
  }) {
    return loadingAuthorization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingAuthorization,
    TResult? Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult? Function(dynamic err)? errorAuthorization,
  }) {
    return loadingAuthorization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAuthorization,
    TResult Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult Function(dynamic err)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (loadingAuthorization != null) {
      return loadingAuthorization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderSummaryLoadingAuthorization value)
        loadingAuthorization,
    required TResult Function(_OrderSummaryContentAuthorization value)
        contentAuthorization,
    required TResult Function(_OrderSummaryErrorAuthorization value)
        errorAuthorization,
  }) {
    return loadingAuthorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult? Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult? Function(_OrderSummaryErrorAuthorization value)?
        errorAuthorization,
  }) {
    return loadingAuthorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult Function(_OrderSummaryErrorAuthorization value)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (loadingAuthorization != null) {
      return loadingAuthorization(this);
    }
    return orElse();
  }
}

abstract class _OrderSummaryLoadingAuthorization implements AuthorizationState {
  const factory _OrderSummaryLoadingAuthorization() =
      _$_OrderSummaryLoadingAuthorization;
}

/// @nodoc
abstract class _$$_OrderSummaryContentAuthorizationCopyWith<$Res> {
  factory _$$_OrderSummaryContentAuthorizationCopyWith(
          _$_OrderSummaryContentAuthorization value,
          $Res Function(_$_OrderSummaryContentAuthorization) then) =
      __$$_OrderSummaryContentAuthorizationCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthorizationResponse summaryAuthorization});
}

/// @nodoc
class __$$_OrderSummaryContentAuthorizationCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$_OrderSummaryContentAuthorization>
    implements _$$_OrderSummaryContentAuthorizationCopyWith<$Res> {
  __$$_OrderSummaryContentAuthorizationCopyWithImpl(
      _$_OrderSummaryContentAuthorization _value,
      $Res Function(_$_OrderSummaryContentAuthorization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaryAuthorization = null,
  }) {
    return _then(_$_OrderSummaryContentAuthorization(
      null == summaryAuthorization
          ? _value.summaryAuthorization
          : summaryAuthorization // ignore: cast_nullable_to_non_nullable
              as AuthorizationResponse,
    ));
  }
}

/// @nodoc

class _$_OrderSummaryContentAuthorization
    implements _OrderSummaryContentAuthorization {
  const _$_OrderSummaryContentAuthorization(this.summaryAuthorization);

  @override
  final AuthorizationResponse summaryAuthorization;

  @override
  String toString() {
    return 'AuthorizationState.contentAuthorization(summaryAuthorization: $summaryAuthorization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryContentAuthorization &&
            (identical(other.summaryAuthorization, summaryAuthorization) ||
                other.summaryAuthorization == summaryAuthorization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summaryAuthorization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSummaryContentAuthorizationCopyWith<
          _$_OrderSummaryContentAuthorization>
      get copyWith => __$$_OrderSummaryContentAuthorizationCopyWithImpl<
          _$_OrderSummaryContentAuthorization>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAuthorization,
    required TResult Function(AuthorizationResponse summaryAuthorization)
        contentAuthorization,
    required TResult Function(dynamic err) errorAuthorization,
  }) {
    return contentAuthorization(summaryAuthorization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingAuthorization,
    TResult? Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult? Function(dynamic err)? errorAuthorization,
  }) {
    return contentAuthorization?.call(summaryAuthorization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAuthorization,
    TResult Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult Function(dynamic err)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (contentAuthorization != null) {
      return contentAuthorization(summaryAuthorization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderSummaryLoadingAuthorization value)
        loadingAuthorization,
    required TResult Function(_OrderSummaryContentAuthorization value)
        contentAuthorization,
    required TResult Function(_OrderSummaryErrorAuthorization value)
        errorAuthorization,
  }) {
    return contentAuthorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult? Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult? Function(_OrderSummaryErrorAuthorization value)?
        errorAuthorization,
  }) {
    return contentAuthorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult Function(_OrderSummaryErrorAuthorization value)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (contentAuthorization != null) {
      return contentAuthorization(this);
    }
    return orElse();
  }
}

abstract class _OrderSummaryContentAuthorization implements AuthorizationState {
  const factory _OrderSummaryContentAuthorization(
          final AuthorizationResponse summaryAuthorization) =
      _$_OrderSummaryContentAuthorization;

  AuthorizationResponse get summaryAuthorization;
  @JsonKey(ignore: true)
  _$$_OrderSummaryContentAuthorizationCopyWith<
          _$_OrderSummaryContentAuthorization>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OrderSummaryErrorAuthorizationCopyWith<$Res> {
  factory _$$_OrderSummaryErrorAuthorizationCopyWith(
          _$_OrderSummaryErrorAuthorization value,
          $Res Function(_$_OrderSummaryErrorAuthorization) then) =
      __$$_OrderSummaryErrorAuthorizationCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic err});
}

/// @nodoc
class __$$_OrderSummaryErrorAuthorizationCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$_OrderSummaryErrorAuthorization>
    implements _$$_OrderSummaryErrorAuthorizationCopyWith<$Res> {
  __$$_OrderSummaryErrorAuthorizationCopyWithImpl(
      _$_OrderSummaryErrorAuthorization _value,
      $Res Function(_$_OrderSummaryErrorAuthorization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_OrderSummaryErrorAuthorization(
      freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OrderSummaryErrorAuthorization
    implements _OrderSummaryErrorAuthorization {
  const _$_OrderSummaryErrorAuthorization(this.err);

  @override
  final dynamic err;

  @override
  String toString() {
    return 'AuthorizationState.errorAuthorization(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryErrorAuthorization &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSummaryErrorAuthorizationCopyWith<_$_OrderSummaryErrorAuthorization>
      get copyWith => __$$_OrderSummaryErrorAuthorizationCopyWithImpl<
          _$_OrderSummaryErrorAuthorization>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAuthorization,
    required TResult Function(AuthorizationResponse summaryAuthorization)
        contentAuthorization,
    required TResult Function(dynamic err) errorAuthorization,
  }) {
    return errorAuthorization(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingAuthorization,
    TResult? Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult? Function(dynamic err)? errorAuthorization,
  }) {
    return errorAuthorization?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAuthorization,
    TResult Function(AuthorizationResponse summaryAuthorization)?
        contentAuthorization,
    TResult Function(dynamic err)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (errorAuthorization != null) {
      return errorAuthorization(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderSummaryLoadingAuthorization value)
        loadingAuthorization,
    required TResult Function(_OrderSummaryContentAuthorization value)
        contentAuthorization,
    required TResult Function(_OrderSummaryErrorAuthorization value)
        errorAuthorization,
  }) {
    return errorAuthorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult? Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult? Function(_OrderSummaryErrorAuthorization value)?
        errorAuthorization,
  }) {
    return errorAuthorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderSummaryLoadingAuthorization value)?
        loadingAuthorization,
    TResult Function(_OrderSummaryContentAuthorization value)?
        contentAuthorization,
    TResult Function(_OrderSummaryErrorAuthorization value)? errorAuthorization,
    required TResult orElse(),
  }) {
    if (errorAuthorization != null) {
      return errorAuthorization(this);
    }
    return orElse();
  }
}

abstract class _OrderSummaryErrorAuthorization implements AuthorizationState {
  const factory _OrderSummaryErrorAuthorization(final dynamic err) =
      _$_OrderSummaryErrorAuthorization;

  dynamic get err;
  @JsonKey(ignore: true)
  _$$_OrderSummaryErrorAuthorizationCopyWith<_$_OrderSummaryErrorAuthorization>
      get copyWith => throw _privateConstructorUsedError;
}
