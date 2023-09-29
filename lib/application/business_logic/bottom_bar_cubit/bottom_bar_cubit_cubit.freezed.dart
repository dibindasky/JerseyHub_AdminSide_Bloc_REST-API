// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_bar_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomBarCubitState {
  int get currentIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) initial,
    required TResult Function(int currentIndex) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? initial,
    TResult? Function(int currentIndex)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? initial,
    TResult Function(int currentIndex)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Changed value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Changed value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBarCubitStateCopyWith<BottomBarCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarCubitStateCopyWith<$Res> {
  factory $BottomBarCubitStateCopyWith(
          BottomBarCubitState value, $Res Function(BottomBarCubitState) then) =
      _$BottomBarCubitStateCopyWithImpl<$Res, BottomBarCubitState>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$BottomBarCubitStateCopyWithImpl<$Res, $Val extends BottomBarCubitState>
    implements $BottomBarCubitStateCopyWith<$Res> {
  _$BottomBarCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $BottomBarCubitStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BottomBarCubitStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$_Initial(
      null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'BottomBarCubitState.initial(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) initial,
    required TResult Function(int currentIndex) changed,
  }) {
    return initial(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? initial,
    TResult? Function(int currentIndex)? changed,
  }) {
    return initial?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? initial,
    TResult Function(int currentIndex)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Changed value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Changed value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BottomBarCubitState {
  const factory _Initial(final int currentIndex) = _$_Initial;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangedCopyWith<$Res>
    implements $BottomBarCubitStateCopyWith<$Res> {
  factory _$$_ChangedCopyWith(
          _$_Changed value, $Res Function(_$_Changed) then) =
      __$$_ChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_ChangedCopyWithImpl<$Res>
    extends _$BottomBarCubitStateCopyWithImpl<$Res, _$_Changed>
    implements _$$_ChangedCopyWith<$Res> {
  __$$_ChangedCopyWithImpl(_$_Changed _value, $Res Function(_$_Changed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$_Changed(
      null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'BottomBarCubitState.changed(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Changed &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      __$$_ChangedCopyWithImpl<_$_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) initial,
    required TResult Function(int currentIndex) changed,
  }) {
    return changed(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? initial,
    TResult? Function(int currentIndex)? changed,
  }) {
    return changed?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? initial,
    TResult Function(int currentIndex)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Changed value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Changed value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements BottomBarCubitState {
  const factory _Changed(final int currentIndex) = _$_Changed;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}
