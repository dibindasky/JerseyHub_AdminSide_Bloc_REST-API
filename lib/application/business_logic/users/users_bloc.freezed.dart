// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersQurrey getUsersQurrey) getUsers,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        blockUser,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_UnBlockUser value) unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_UnBlockUser value)? unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetUsersQurrey getUsersQurrey});
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
      _$GetUsersImpl _value, $Res Function(_$GetUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUsersQurrey = null,
  }) {
    return _then(_$GetUsersImpl(
      getUsersQurrey: null == getUsersQurrey
          ? _value.getUsersQurrey
          : getUsersQurrey // ignore: cast_nullable_to_non_nullable
              as GetUsersQurrey,
    ));
  }
}

/// @nodoc

class _$GetUsersImpl implements _GetUsers {
  const _$GetUsersImpl({required this.getUsersQurrey});

  @override
  final GetUsersQurrey getUsersQurrey;

  @override
  String toString() {
    return 'UsersEvent.getUsers(getUsersQurrey: $getUsersQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersImpl &&
            (identical(other.getUsersQurrey, getUsersQurrey) ||
                other.getUsersQurrey == getUsersQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getUsersQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      __$$GetUsersImplCopyWithImpl<_$GetUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersQurrey getUsersQurrey) getUsers,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        blockUser,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        unBlockUser,
  }) {
    return getUsers(getUsersQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
  }) {
    return getUsers?.call(getUsersQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(getUsersQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_UnBlockUser value) unBlockUser,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_UnBlockUser value)? unBlockUser,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UsersEvent {
  const factory _GetUsers({required final GetUsersQurrey getUsersQurrey}) =
      _$GetUsersImpl;

  GetUsersQurrey get getUsersQurrey;
  @JsonKey(ignore: true)
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockUserImplCopyWith<$Res> {
  factory _$$BlockUserImplCopyWith(
          _$BlockUserImpl value, $Res Function(_$BlockUserImpl) then) =
      __$$BlockUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockUnblockUserQurrey blockUnblockUserQurrey});
}

/// @nodoc
class __$$BlockUserImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$BlockUserImpl>
    implements _$$BlockUserImplCopyWith<$Res> {
  __$$BlockUserImplCopyWithImpl(
      _$BlockUserImpl _value, $Res Function(_$BlockUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockUnblockUserQurrey = null,
  }) {
    return _then(_$BlockUserImpl(
      blockUnblockUserQurrey: null == blockUnblockUserQurrey
          ? _value.blockUnblockUserQurrey
          : blockUnblockUserQurrey // ignore: cast_nullable_to_non_nullable
              as BlockUnblockUserQurrey,
    ));
  }
}

/// @nodoc

class _$BlockUserImpl implements _BlockUser {
  const _$BlockUserImpl({required this.blockUnblockUserQurrey});

  @override
  final BlockUnblockUserQurrey blockUnblockUserQurrey;

  @override
  String toString() {
    return 'UsersEvent.blockUser(blockUnblockUserQurrey: $blockUnblockUserQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockUserImpl &&
            (identical(other.blockUnblockUserQurrey, blockUnblockUserQurrey) ||
                other.blockUnblockUserQurrey == blockUnblockUserQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockUnblockUserQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockUserImplCopyWith<_$BlockUserImpl> get copyWith =>
      __$$BlockUserImplCopyWithImpl<_$BlockUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersQurrey getUsersQurrey) getUsers,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        blockUser,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        unBlockUser,
  }) {
    return blockUser(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
  }) {
    return blockUser?.call(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(blockUnblockUserQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_UnBlockUser value) unBlockUser,
  }) {
    return blockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_UnBlockUser value)? unBlockUser,
  }) {
    return blockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class _BlockUser implements UsersEvent {
  const factory _BlockUser(
          {required final BlockUnblockUserQurrey blockUnblockUserQurrey}) =
      _$BlockUserImpl;

  BlockUnblockUserQurrey get blockUnblockUserQurrey;
  @JsonKey(ignore: true)
  _$$BlockUserImplCopyWith<_$BlockUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnBlockUserImplCopyWith<$Res> {
  factory _$$UnBlockUserImplCopyWith(
          _$UnBlockUserImpl value, $Res Function(_$UnBlockUserImpl) then) =
      __$$UnBlockUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockUnblockUserQurrey blockUnblockUserQurrey});
}

/// @nodoc
class __$$UnBlockUserImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$UnBlockUserImpl>
    implements _$$UnBlockUserImplCopyWith<$Res> {
  __$$UnBlockUserImplCopyWithImpl(
      _$UnBlockUserImpl _value, $Res Function(_$UnBlockUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockUnblockUserQurrey = null,
  }) {
    return _then(_$UnBlockUserImpl(
      blockUnblockUserQurrey: null == blockUnblockUserQurrey
          ? _value.blockUnblockUserQurrey
          : blockUnblockUserQurrey // ignore: cast_nullable_to_non_nullable
              as BlockUnblockUserQurrey,
    ));
  }
}

/// @nodoc

class _$UnBlockUserImpl implements _UnBlockUser {
  const _$UnBlockUserImpl({required this.blockUnblockUserQurrey});

  @override
  final BlockUnblockUserQurrey blockUnblockUserQurrey;

  @override
  String toString() {
    return 'UsersEvent.unBlockUser(blockUnblockUserQurrey: $blockUnblockUserQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnBlockUserImpl &&
            (identical(other.blockUnblockUserQurrey, blockUnblockUserQurrey) ||
                other.blockUnblockUserQurrey == blockUnblockUserQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockUnblockUserQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnBlockUserImplCopyWith<_$UnBlockUserImpl> get copyWith =>
      __$$UnBlockUserImplCopyWithImpl<_$UnBlockUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetUsersQurrey getUsersQurrey) getUsers,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        blockUser,
    required TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)
        unBlockUser,
  }) {
    return unBlockUser(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult? Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
  }) {
    return unBlockUser?.call(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetUsersQurrey getUsersQurrey)? getUsers,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)? blockUser,
    TResult Function(BlockUnblockUserQurrey blockUnblockUserQurrey)?
        unBlockUser,
    required TResult orElse(),
  }) {
    if (unBlockUser != null) {
      return unBlockUser(blockUnblockUserQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_UnBlockUser value) unBlockUser,
  }) {
    return unBlockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_BlockUser value)? blockUser,
    TResult? Function(_UnBlockUser value)? unBlockUser,
  }) {
    return unBlockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) {
    if (unBlockUser != null) {
      return unBlockUser(this);
    }
    return orElse();
  }
}

abstract class _UnBlockUser implements UsersEvent {
  const factory _UnBlockUser(
          {required final BlockUnblockUserQurrey blockUnblockUserQurrey}) =
      _$UnBlockUserImpl;

  BlockUnblockUserQurrey get blockUnblockUserQurrey;
  @JsonKey(ignore: true)
  _$$UnBlockUserImplCopyWith<_$UnBlockUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  bool get isUnBlocked => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetUsersResponseModel? get getUsersResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isBlocked,
      bool isUnBlocked,
      bool hasError,
      String? message,
      GetUsersResponseModel? getUsersResponseModel});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isBlocked = null,
    Object? isUnBlocked = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getUsersResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnBlocked: null == isUnBlocked
          ? _value.isUnBlocked
          : isUnBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getUsersResponseModel: freezed == getUsersResponseModel
          ? _value.getUsersResponseModel
          : getUsersResponseModel // ignore: cast_nullable_to_non_nullable
              as GetUsersResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isBlocked,
      bool isUnBlocked,
      bool hasError,
      String? message,
      GetUsersResponseModel? getUsersResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isBlocked = null,
    Object? isUnBlocked = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getUsersResponseModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnBlocked: null == isUnBlocked
          ? _value.isUnBlocked
          : isUnBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getUsersResponseModel: freezed == getUsersResponseModel
          ? _value.getUsersResponseModel
          : getUsersResponseModel // ignore: cast_nullable_to_non_nullable
              as GetUsersResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isBlocked,
      required this.isUnBlocked,
      required this.hasError,
      this.message,
      this.getUsersResponseModel});

  @override
  final bool isLoading;
  @override
  final bool isBlocked;
  @override
  final bool isUnBlocked;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final GetUsersResponseModel? getUsersResponseModel;

  @override
  String toString() {
    return 'UsersState(isLoading: $isLoading, isBlocked: $isBlocked, isUnBlocked: $isUnBlocked, hasError: $hasError, message: $message, getUsersResponseModel: $getUsersResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isUnBlocked, isUnBlocked) ||
                other.isUnBlocked == isUnBlocked) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getUsersResponseModel, getUsersResponseModel) ||
                other.getUsersResponseModel == getUsersResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isBlocked,
      isUnBlocked, hasError, message, getUsersResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UsersState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isBlocked,
      required final bool isUnBlocked,
      required final bool hasError,
      final String? message,
      final GetUsersResponseModel? getUsersResponseModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isBlocked;
  @override
  bool get isUnBlocked;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  GetUsersResponseModel? get getUsersResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
