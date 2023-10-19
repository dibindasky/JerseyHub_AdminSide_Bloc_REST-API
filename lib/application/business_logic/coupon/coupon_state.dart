part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMessage,
      String? message,
      GetCouponsResponseModel? getCouponResponseModel}) = _Initial;

  factory CouponState.initial() => const CouponState(
      isLoading: true,
      showMessage: false,
      isAdding: false,
      hasError: false,
      isDone: false);
}
