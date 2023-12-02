import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_detail_response_model/order_detail.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_response_model/order.dart';
import 'package:jerseyhub_admin/domain/models/order/update_order_status_model/update_order_status_model.dart';
import 'package:jerseyhub_admin/domain/repositories/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderApi;
  final List<String> status = [
    'PENDING',
    'SHIPPED',
    'DELIVERED',
    'CANCELED',
    'RETURNED'
  ];
  String currentStatus = '';
  String currentPaymentStatus = '';
  OrderBloc(this.orderApi) : super(OrderState.initial()) {
    on<_GetOrders>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await orderApi.getOrders();
      result.fold(
          (failure) => emit(
                state.copyWith(
                  isLoading: false,
                  hasError: true,
                  message: 'something went wrong',
                ),
              ), (response) {
        final data = response.data;
        emit(
          state.copyWith(
            isLoading: false,
            pending: data!.pending ?? [],
            cancled: data.canceled ?? [],
            returned: data.returned ?? [],
            delivered: data.delivered ?? [],
            shipped: data.shipped ?? [],
          ),
        );
      });
    });

    on<_UpdatePaymentStatus>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await orderApi.updatePaymentStatus(id: event.id);
      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'Can\'t update status',
          ),
        ),
        (response) {
          currentPaymentStatus = 'PAID';
          emit(
            state.copyWith(
              isLoading: false,
              isDone: true,
              message: 'Payment status updated successfully',
            ),
          );
          add(OrderEvent.getOrderById(id: event.id));
        },
      );
    });

    on<_UpdateStatus>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await orderApi.updateOrderStatus(
          updateOrderStatusModel: event.updateOrderStatusModel);
      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'Can\'t update status',
          ),
        ),
        (response) {
          currentStatus = event.updateOrderStatusModel.orderStatus!;
          emit(
            state.copyWith(
              isLoading: false,
              isDone: true,
              message: 'Status updated successfully',
            ),
          );
          add(const OrderEvent.getOrders());
        },
      );
    });

    on<_GetOrderById>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await orderApi.getOrderDetail(id: event.id);
      result.fold(
        (failure) => emit(
          state.copyWith(isLoading: false, orderDetail: null),
        ),
        (response) {
          currentStatus = response.data?.orderStatus ?? '';
          currentPaymentStatus = response.data?.paymentStatus ?? 'NOTPAID';
          emit(
            state.copyWith(isLoading: false, orderDetail: response.data),
          );
        },
      );
    });
  }
}
