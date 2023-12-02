import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/data/services/api_services.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_detail_response_model/get_order_detail_response_model.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_response_model/get_order_response_model.dart';
import 'package:jerseyhub_admin/domain/models/order/update_order_status_model/update_order_status_model.dart';
import 'package:jerseyhub_admin/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub_admin/domain/repositories/order_repository.dart';

class OrderApi implements OrderRepository {
  final ApiService apiService = ApiService(
      baseUrl: ApiEndPoints.baseUrl,
      dio: Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl)));

  @override
  Future<Either<Failure, GetOrderDetailResponseModel>> getOrderDetail(
      {required int id}) async {
    try {
      final response = await apiService
          .get(ApiEndPoints.getOrderDetail.replaceFirst('{id}', id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetOrderDetailResponseModel.fromJson(response.data));
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
  Future<Either<Failure, GetOrderResponseModel>> getOrders() async {
    try {
      final response = await apiService.get(ApiEndPoints.getOrders);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetOrderResponseModel.fromJson(response.data));
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
  Future<Either<Failure, SuccessResponseModel>> updateOrderStatus(
      {required UpdateOrderStatusModel updateOrderStatusModel}) async {
    try {
      final response = await apiService.put(ApiEndPoints.editOrderStatus,
          data: updateOrderStatusModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SuccessResponseModel.fromJson(response.data));
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
  Future<Either<Failure, SuccessResponseModel>> updatePaymentStatus(
      {required int id}) async {
    try {
      final response = await apiService.put(ApiEndPoints.editOrderPaymentStatus,
          queryParameters: {"id": id});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SuccessResponseModel.fromJson(response.data));
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
