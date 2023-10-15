// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetInventoryEvent {
  GetResponseQurrey get getResponseQurrey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventoryCall value) getInventoryCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventoryCall value)? getInventoryCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventoryCall value)? getInventoryCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetInventoryEventCopyWith<GetInventoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInventoryEventCopyWith<$Res> {
  factory $GetInventoryEventCopyWith(
          GetInventoryEvent value, $Res Function(GetInventoryEvent) then) =
      _$GetInventoryEventCopyWithImpl<$Res, GetInventoryEvent>;
  @useResult
  $Res call({GetResponseQurrey getResponseQurrey});
}

/// @nodoc
class _$GetInventoryEventCopyWithImpl<$Res, $Val extends GetInventoryEvent>
    implements $GetInventoryEventCopyWith<$Res> {
  _$GetInventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getResponseQurrey = null,
  }) {
    return _then(_value.copyWith(
      getResponseQurrey: null == getResponseQurrey
          ? _value.getResponseQurrey
          : getResponseQurrey // ignore: cast_nullable_to_non_nullable
              as GetResponseQurrey,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInventoryCallImplCopyWith<$Res>
    implements $GetInventoryEventCopyWith<$Res> {
  factory _$$GetInventoryCallImplCopyWith(_$GetInventoryCallImpl value,
          $Res Function(_$GetInventoryCallImpl) then) =
      __$$GetInventoryCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetResponseQurrey getResponseQurrey});
}

/// @nodoc
class __$$GetInventoryCallImplCopyWithImpl<$Res>
    extends _$GetInventoryEventCopyWithImpl<$Res, _$GetInventoryCallImpl>
    implements _$$GetInventoryCallImplCopyWith<$Res> {
  __$$GetInventoryCallImplCopyWithImpl(_$GetInventoryCallImpl _value,
      $Res Function(_$GetInventoryCallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getResponseQurrey = null,
  }) {
    return _then(_$GetInventoryCallImpl(
      getResponseQurrey: null == getResponseQurrey
          ? _value.getResponseQurrey
          : getResponseQurrey // ignore: cast_nullable_to_non_nullable
              as GetResponseQurrey,
    ));
  }
}

/// @nodoc

class _$GetInventoryCallImpl implements _GetInventoryCall {
  const _$GetInventoryCallImpl({required this.getResponseQurrey});

  @override
  final GetResponseQurrey getResponseQurrey;

  @override
  String toString() {
    return 'GetInventoryEvent.getInventoryCall(getResponseQurrey: $getResponseQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInventoryCallImpl &&
            (identical(other.getResponseQurrey, getResponseQurrey) ||
                other.getResponseQurrey == getResponseQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getResponseQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInventoryCallImplCopyWith<_$GetInventoryCallImpl> get copyWith =>
      __$$GetInventoryCallImplCopyWithImpl<_$GetInventoryCallImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
  }) {
    return getInventoryCall(getResponseQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
  }) {
    return getInventoryCall?.call(getResponseQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    required TResult orElse(),
  }) {
    if (getInventoryCall != null) {
      return getInventoryCall(getResponseQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInventoryCall value) getInventoryCall,
  }) {
    return getInventoryCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInventoryCall value)? getInventoryCall,
  }) {
    return getInventoryCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInventoryCall value)? getInventoryCall,
    required TResult orElse(),
  }) {
    if (getInventoryCall != null) {
      return getInventoryCall(this);
    }
    return orElse();
  }
}

abstract class _GetInventoryCall implements GetInventoryEvent {
  const factory _GetInventoryCall(
          {required final GetResponseQurrey getResponseQurrey}) =
      _$GetInventoryCallImpl;

  @override
  GetResponseQurrey get getResponseQurrey;
  @override
  @JsonKey(ignore: true)
  _$$GetInventoryCallImplCopyWith<_$GetInventoryCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetInventoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetInventoryResponseModel? get getInventoryResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetInventoryStateCopyWith<GetInventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInventoryStateCopyWith<$Res> {
  factory $GetInventoryStateCopyWith(
          GetInventoryState value, $Res Function(GetInventoryState) then) =
      _$GetInventoryStateCopyWithImpl<$Res, GetInventoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      GetInventoryResponseModel? getInventoryResponseModel});
}

/// @nodoc
class _$GetInventoryStateCopyWithImpl<$Res, $Val extends GetInventoryState>
    implements $GetInventoryStateCopyWith<$Res> {
  _$GetInventoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getInventoryResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getInventoryResponseModel: freezed == getInventoryResponseModel
          ? _value.getInventoryResponseModel
          : getInventoryResponseModel // ignore: cast_nullable_to_non_nullable
              as GetInventoryResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GetInventoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      GetInventoryResponseModel? getInventoryResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetInventoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getInventoryResponseModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getInventoryResponseModel: freezed == getInventoryResponseModel
          ? _value.getInventoryResponseModel
          : getInventoryResponseModel // ignore: cast_nullable_to_non_nullable
              as GetInventoryResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.getInventoryResponseModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final GetInventoryResponseModel? getInventoryResponseModel;

  @override
  String toString() {
    return 'GetInventoryState(isLoading: $isLoading, hasError: $hasError, message: $message, getInventoryResponseModel: $getInventoryResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getInventoryResponseModel,
                    getInventoryResponseModel) ||
                other.getInventoryResponseModel == getInventoryResponseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, message, getInventoryResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements GetInventoryState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          final String? message,
          final GetInventoryResponseModel? getInventoryResponseModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  GetInventoryResponseModel? get getInventoryResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
