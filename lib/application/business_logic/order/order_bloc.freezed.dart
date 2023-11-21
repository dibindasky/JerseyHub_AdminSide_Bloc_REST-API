// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int id) getOrderById,
    required TResult Function(UpdateOrderStatusModel updateOrderStatusModel)
        updateStatus,
    required TResult Function(int id) updatePaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int id)? getOrderById,
    TResult? Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult? Function(int id)? updatePaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int id)? getOrderById,
    TResult Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult Function(int id)? updatePaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdatePaymentStatus value) updatePaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdatePaymentStatus value)? updatePaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdatePaymentStatus value)? updatePaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl();

  @override
  String toString() {
    return 'OrderEvent.getOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int id) getOrderById,
    required TResult Function(UpdateOrderStatusModel updateOrderStatusModel)
        updateStatus,
    required TResult Function(int id) updatePaymentStatus,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int id)? getOrderById,
    TResult? Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult? Function(int id)? updatePaymentStatus,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int id)? getOrderById,
    TResult Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult Function(int id)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdatePaymentStatus value) updatePaymentStatus,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdatePaymentStatus value)? updatePaymentStatus,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdatePaymentStatus value)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrderEvent {
  const factory _GetOrders() = _$GetOrdersImpl;
}

/// @nodoc
abstract class _$$GetOrderByIdImplCopyWith<$Res> {
  factory _$$GetOrderByIdImplCopyWith(
          _$GetOrderByIdImpl value, $Res Function(_$GetOrderByIdImpl) then) =
      __$$GetOrderByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetOrderByIdImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrderByIdImpl>
    implements _$$GetOrderByIdImplCopyWith<$Res> {
  __$$GetOrderByIdImplCopyWithImpl(
      _$GetOrderByIdImpl _value, $Res Function(_$GetOrderByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetOrderByIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetOrderByIdImpl implements _GetOrderById {
  const _$GetOrderByIdImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'OrderEvent.getOrderById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByIdImplCopyWith<_$GetOrderByIdImpl> get copyWith =>
      __$$GetOrderByIdImplCopyWithImpl<_$GetOrderByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int id) getOrderById,
    required TResult Function(UpdateOrderStatusModel updateOrderStatusModel)
        updateStatus,
    required TResult Function(int id) updatePaymentStatus,
  }) {
    return getOrderById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int id)? getOrderById,
    TResult? Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult? Function(int id)? updatePaymentStatus,
  }) {
    return getOrderById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int id)? getOrderById,
    TResult Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult Function(int id)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (getOrderById != null) {
      return getOrderById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdatePaymentStatus value) updatePaymentStatus,
  }) {
    return getOrderById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdatePaymentStatus value)? updatePaymentStatus,
  }) {
    return getOrderById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdatePaymentStatus value)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (getOrderById != null) {
      return getOrderById(this);
    }
    return orElse();
  }
}

abstract class _GetOrderById implements OrderEvent {
  const factory _GetOrderById({required final int id}) = _$GetOrderByIdImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetOrderByIdImplCopyWith<_$GetOrderByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateOrderStatusModel updateOrderStatusModel});
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
      _$UpdateStatusImpl _value, $Res Function(_$UpdateStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateOrderStatusModel = null,
  }) {
    return _then(_$UpdateStatusImpl(
      updateOrderStatusModel: null == updateOrderStatusModel
          ? _value.updateOrderStatusModel
          : updateOrderStatusModel // ignore: cast_nullable_to_non_nullable
              as UpdateOrderStatusModel,
    ));
  }
}

/// @nodoc

class _$UpdateStatusImpl implements _UpdateStatus {
  const _$UpdateStatusImpl({required this.updateOrderStatusModel});

  @override
  final UpdateOrderStatusModel updateOrderStatusModel;

  @override
  String toString() {
    return 'OrderEvent.updateStatus(updateOrderStatusModel: $updateOrderStatusModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.updateOrderStatusModel, updateOrderStatusModel) ||
                other.updateOrderStatusModel == updateOrderStatusModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateOrderStatusModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      __$$UpdateStatusImplCopyWithImpl<_$UpdateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int id) getOrderById,
    required TResult Function(UpdateOrderStatusModel updateOrderStatusModel)
        updateStatus,
    required TResult Function(int id) updatePaymentStatus,
  }) {
    return updateStatus(updateOrderStatusModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int id)? getOrderById,
    TResult? Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult? Function(int id)? updatePaymentStatus,
  }) {
    return updateStatus?.call(updateOrderStatusModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int id)? getOrderById,
    TResult Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult Function(int id)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(updateOrderStatusModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdatePaymentStatus value) updatePaymentStatus,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdatePaymentStatus value)? updatePaymentStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdatePaymentStatus value)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatus implements OrderEvent {
  const factory _UpdateStatus(
          {required final UpdateOrderStatusModel updateOrderStatusModel}) =
      _$UpdateStatusImpl;

  UpdateOrderStatusModel get updateOrderStatusModel;
  @JsonKey(ignore: true)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentStatusImplCopyWith<$Res> {
  factory _$$UpdatePaymentStatusImplCopyWith(_$UpdatePaymentStatusImpl value,
          $Res Function(_$UpdatePaymentStatusImpl) then) =
      __$$UpdatePaymentStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UpdatePaymentStatusImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$UpdatePaymentStatusImpl>
    implements _$$UpdatePaymentStatusImplCopyWith<$Res> {
  __$$UpdatePaymentStatusImplCopyWithImpl(_$UpdatePaymentStatusImpl _value,
      $Res Function(_$UpdatePaymentStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdatePaymentStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentStatusImpl implements _UpdatePaymentStatus {
  const _$UpdatePaymentStatusImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'OrderEvent.updatePaymentStatus(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentStatusImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentStatusImplCopyWith<_$UpdatePaymentStatusImpl> get copyWith =>
      __$$UpdatePaymentStatusImplCopyWithImpl<_$UpdatePaymentStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function(int id) getOrderById,
    required TResult Function(UpdateOrderStatusModel updateOrderStatusModel)
        updateStatus,
    required TResult Function(int id) updatePaymentStatus,
  }) {
    return updatePaymentStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function(int id)? getOrderById,
    TResult? Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult? Function(int id)? updatePaymentStatus,
  }) {
    return updatePaymentStatus?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function(int id)? getOrderById,
    TResult Function(UpdateOrderStatusModel updateOrderStatusModel)?
        updateStatus,
    TResult Function(int id)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (updatePaymentStatus != null) {
      return updatePaymentStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderById value) getOrderById,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_UpdatePaymentStatus value) updatePaymentStatus,
  }) {
    return updatePaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderById value)? getOrderById,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_UpdatePaymentStatus value)? updatePaymentStatus,
  }) {
    return updatePaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderById value)? getOrderById,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_UpdatePaymentStatus value)? updatePaymentStatus,
    required TResult orElse(),
  }) {
    if (updatePaymentStatus != null) {
      return updatePaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdatePaymentStatus implements OrderEvent {
  const factory _UpdatePaymentStatus({required final int id}) =
      _$UpdatePaymentStatusImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$UpdatePaymentStatusImplCopyWith<_$UpdatePaymentStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OrderDetail? get orderDetail => throw _privateConstructorUsedError;
  List<Order>? get pending => throw _privateConstructorUsedError;
  List<Order>? get shipped => throw _privateConstructorUsedError;
  List<Order>? get delivered => throw _privateConstructorUsedError;
  List<Order>? get returned => throw _privateConstructorUsedError;
  List<Order>? get cancled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {bool hasError,
      bool isDone,
      bool isLoading,
      String? message,
      OrderDetail? orderDetail,
      List<Order>? pending,
      List<Order>? shipped,
      List<Order>? delivered,
      List<Order>? returned,
      List<Order>? cancled});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isDone = null,
    Object? isLoading = null,
    Object? message = freezed,
    Object? orderDetail = freezed,
    Object? pending = freezed,
    Object? shipped = freezed,
    Object? delivered = freezed,
    Object? returned = freezed,
    Object? cancled = freezed,
  }) {
    return _then(_value.copyWith(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      shipped: freezed == shipped
          ? _value.shipped
          : shipped // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      cancled: freezed == cancled
          ? _value.cancled
          : cancled // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasError,
      bool isDone,
      bool isLoading,
      String? message,
      OrderDetail? orderDetail,
      List<Order>? pending,
      List<Order>? shipped,
      List<Order>? delivered,
      List<Order>? returned,
      List<Order>? cancled});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isDone = null,
    Object? isLoading = null,
    Object? message = freezed,
    Object? orderDetail = freezed,
    Object? pending = freezed,
    Object? shipped = freezed,
    Object? delivered = freezed,
    Object? returned = freezed,
    Object? cancled = freezed,
  }) {
    return _then(_$InitialImpl(
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      pending: freezed == pending
          ? _value._pending
          : pending // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      shipped: freezed == shipped
          ? _value._shipped
          : shipped // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      delivered: freezed == delivered
          ? _value._delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      returned: freezed == returned
          ? _value._returned
          : returned // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
      cancled: freezed == cancled
          ? _value._cancled
          : cancled // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.hasError,
      required this.isDone,
      required this.isLoading,
      this.message,
      this.orderDetail,
      final List<Order>? pending,
      final List<Order>? shipped,
      final List<Order>? delivered,
      final List<Order>? returned,
      final List<Order>? cancled})
      : _pending = pending,
        _shipped = shipped,
        _delivered = delivered,
        _returned = returned,
        _cancled = cancled;

  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final bool isLoading;
  @override
  final String? message;
  @override
  final OrderDetail? orderDetail;
  final List<Order>? _pending;
  @override
  List<Order>? get pending {
    final value = _pending;
    if (value == null) return null;
    if (_pending is EqualUnmodifiableListView) return _pending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Order>? _shipped;
  @override
  List<Order>? get shipped {
    final value = _shipped;
    if (value == null) return null;
    if (_shipped is EqualUnmodifiableListView) return _shipped;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Order>? _delivered;
  @override
  List<Order>? get delivered {
    final value = _delivered;
    if (value == null) return null;
    if (_delivered is EqualUnmodifiableListView) return _delivered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Order>? _returned;
  @override
  List<Order>? get returned {
    final value = _returned;
    if (value == null) return null;
    if (_returned is EqualUnmodifiableListView) return _returned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Order>? _cancled;
  @override
  List<Order>? get cancled {
    final value = _cancled;
    if (value == null) return null;
    if (_cancled is EqualUnmodifiableListView) return _cancled;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderState(hasError: $hasError, isDone: $isDone, isLoading: $isLoading, message: $message, orderDetail: $orderDetail, pending: $pending, shipped: $shipped, delivered: $delivered, returned: $returned, cancled: $cancled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            const DeepCollectionEquality().equals(other._pending, _pending) &&
            const DeepCollectionEquality().equals(other._shipped, _shipped) &&
            const DeepCollectionEquality()
                .equals(other._delivered, _delivered) &&
            const DeepCollectionEquality().equals(other._returned, _returned) &&
            const DeepCollectionEquality().equals(other._cancled, _cancled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasError,
      isDone,
      isLoading,
      message,
      orderDetail,
      const DeepCollectionEquality().hash(_pending),
      const DeepCollectionEquality().hash(_shipped),
      const DeepCollectionEquality().hash(_delivered),
      const DeepCollectionEquality().hash(_returned),
      const DeepCollectionEquality().hash(_cancled));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OrderState {
  const factory _Initial(
      {required final bool hasError,
      required final bool isDone,
      required final bool isLoading,
      final String? message,
      final OrderDetail? orderDetail,
      final List<Order>? pending,
      final List<Order>? shipped,
      final List<Order>? delivered,
      final List<Order>? returned,
      final List<Order>? cancled}) = _$InitialImpl;

  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  bool get isLoading;
  @override
  String? get message;
  @override
  OrderDetail? get orderDetail;
  @override
  List<Order>? get pending;
  @override
  List<Order>? get shipped;
  @override
  List<Order>? get delivered;
  @override
  List<Order>? get returned;
  @override
  List<Order>? get cancled;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
