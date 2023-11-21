part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState(
      {required bool hasError,
      required bool isDone,
      required bool isLoading,
      String? message,
      OrderDetail? orderDetail,
      List<Order>? pending,
      List<Order>? shipped,
      List<Order>? delivered,
      List<Order>? returned,
      List<Order>? cancled}) = _Initial;
  factory OrderState.initial() =>
      const OrderState(hasError: false, isDone: false, isLoading: false);
}
