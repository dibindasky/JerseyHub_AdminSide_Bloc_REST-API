import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/domain/models/coupons/add_coupon_model/add_coupon_model.dart';
import 'package:jerseyhub_admin/domain/models/coupons/coupon_activate_qurrey/coupon_activate_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/delete_coupen_qurrey/delete_coupen_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/get_coupons_response_model/get_coupons_response_model.dart';
import 'package:jerseyhub_admin/domain/repositories/coupon_repository.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';
part 'coupon_bloc.freezed.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final TextEditingController couponNameController = TextEditingController();
  final TextEditingController couponAmountController = TextEditingController();
  final GlobalKey<FormState> couponKey = GlobalKey<FormState>();
  final CouponRepository couponApi;
  CouponBloc(this.couponApi) : super(CouponState.initial()) {
    on<_AddCoupon>((event, emit) async {
      final result = await couponApi.addCoupon(
          addCouponModel: event.addCouponModel );
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong please try again')),
          (couponResponseModel) {
        emit(state.copyWith(isDone: true, message: 'Coupon added sussfully'));
        couponAmountController.text = '';
        couponNameController.text = '';
        add(const CouponEvent.getCoupon());
      });
    });

    on<_GetCoupon>((event, emit) async {
      final result = await couponApi.getCoupon();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'check connection and reload')), (couponResponseModel) {
        emit(state.copyWith(
            isLoading: false, getCouponResponseModel: couponResponseModel));
      });
    });

    on<_DeleteCoupon>((event, emit) async {
      final result = await couponApi.deleteCoupon(
          deleteCoupenQurrey: event.deleteCoupenQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'can\'t deactivate coupen,somethig went wrong')),
          (couponResponseModel) {
        emit(state.copyWith(isDone: true, message: 'Coupon deactivated'));
        add(const CouponEvent.getCoupon());
      });
    });

    on<_ActivateCoupon>((event, emit) async {
      final result = await couponApi.activateCoupon(
          couponActivateQurrey: event.couponActivateQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong')), (couponResponseModel) {
        emit(state.copyWith(isDone: true, message: 'Activated susccssfully'));
        add(const CouponEvent.getCoupon());
      });
    });
  }
}
