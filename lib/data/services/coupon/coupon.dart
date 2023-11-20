import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/data/services/api_services.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/coupons/add_coupon_model/add_coupon_model.dart';
import 'package:jerseyhub_admin/domain/models/coupons/coupen_response_model/coupen_response_model.dart';
import 'package:jerseyhub_admin/domain/models/coupons/coupon_activate_qurrey/coupon_activate_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/delete_coupen_qurrey/delete_coupen_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/coupons/get_coupons_response_model/get_coupons_response_model.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';
import 'package:jerseyhub_admin/domain/repositories/coupon_repository.dart';

class CouponApi implements CouponRepository {
  final ApiService apiService = ApiService(
      baseUrl: ApiEndPoints.baseUrl,
      dio: Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl)));
  @override
  Future<Either<Failure, CoupenResponseModel>> addCoupon(
      {required AddCouponModel addCouponModel,
      required TokenModel tokenModel}) async {
    try {
      final response = await apiService.post(ApiEndPoints.coupon,
          data: addCouponModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(CoupenResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } catch (e) {
      return Left(Failure.clientFailure());
    }
  }

  @override
  Future<Either<Failure, CoupenResponseModel>> deleteCoupon(
      {required TokenModel tokenModel,
      required DeleteCoupenQurrey deleteCoupenQurrey}) async {
    try {
      final response = await apiService.delete(ApiEndPoints.coupon,
          queryParameters: deleteCoupenQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(CoupenResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } catch (e) {
      return Left(Failure.clientFailure());
    }
  }

  @override
  Future<Either<Failure, GetCouponsResponseModel>> getCoupon(
      {required TokenModel tokenModel}) async {
    try {
      final response = await apiService.get(ApiEndPoints.coupon);
      if (response.statusCode == 200) {
        return Right(GetCouponsResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } catch (e) {
      return Left(Failure.clientFailure());
    }
  }

  @override
  Future<Either<Failure, CoupenResponseModel>> activateCoupon(
      {required TokenModel tokenModel,
      required CouponActivateQurrey couponActivateQurrey}) async {
    try {
      final response = await apiService.put(ApiEndPoints.coupon,
          queryParameters: couponActivateQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(CoupenResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } catch (e) {
      return Left(Failure.clientFailure());
    }
  }
}
