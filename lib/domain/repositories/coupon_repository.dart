import 'package:dartz/dartz.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/coupons/add_coupon_model/add_coupon_model.dart';
import 'package:jerseyhub_admin/domain/models/coupons/coupen_response_model/coupen_response_model.dart';
import 'package:jerseyhub_admin/domain/models/coupons/coupon_activate_qurrey/coupon_activate_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/delete_coupen_qurrey/delete_coupen_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/get_coupons_response_model/get_coupons_response_model.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';

abstract class CouponRepository {
  Future<Either<Failure, CoupenResponseModel>> addCoupon(
      {required AddCouponModel addCouponModel, required TokenModel tokenModel});
  Future<Either<Failure, GetCouponsResponseModel>> getCoupon(
      {required TokenModel tokenModel});
  Future<Either<Failure, CoupenResponseModel>> deleteCoupon(
      {required TokenModel tokenModel,
      required DeleteCoupenQurrey deleteCoupenQurrey});
  Future<Either<Failure, CoupenResponseModel>> activateCoupon(
      {required TokenModel tokenModel,
      required CouponActivateQurrey couponActivateQurrey});
}
