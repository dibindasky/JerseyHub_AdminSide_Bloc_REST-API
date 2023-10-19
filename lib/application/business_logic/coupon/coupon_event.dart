part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent.getCoupon() = _GetCoupon;
  const factory CouponEvent.addCoupon(
      {required AddCouponModel addCouponModel}) = _AddCoupon;
  const factory CouponEvent.deleteCoupon(
      {required DeleteCoupenQurrey deleteCoupenQurrey}) = _DeleteCoupon;
  const factory CouponEvent.activateCoupon(
      {required CouponActivateQurrey couponActivateQurrey}) = _ActivateCoupon;
}
