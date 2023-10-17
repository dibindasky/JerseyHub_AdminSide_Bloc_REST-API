import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/inventory/add/add_inventory_response_model/add_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_qurrey/delete_inventory_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_response_model/delete_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/get_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_qurrey/update_inventory_image_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_response/update_inventory_image_response.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_model/update_inventory_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_response_model/update_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';
import 'package:jerseyhub_admin/domain/repositories/inventory_repository.dart';

class InventoryApi implements InventoryRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData, required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'multipart/form-data';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.post(ApiEndPoints.inventory, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddInventoryResponseModel.fromJson(response.data));
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
  Future<Either<Failure, DeleteInventoryResponseModel>> deleteInventory(
      {required TokenModel tokenModel,
      required DeleteInventoryQurrey deleteInventory}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.delete(ApiEndPoints.inventory,
          queryParameters: deleteInventory.toJson());
      if (response.statusCode == 200) {
        return Right(DeleteInventoryResponseModel.fromJson(response.data));
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
  Future<Either<Failure, GetInventoryResponseModel>> getInventory(
      {required GetResponseQurrey getResponseQurrey,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.get(ApiEndPoints.inventory,
          queryParameters: getResponseQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
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
  Future<Either<Failure, UpdateInventoryResponseModel>> updateStockInventory(
      {required UpdateInventoryModel updateInventoryModel,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.put(ApiEndPoints.inventoryStock,
          data: updateInventoryModel.toJson());
      if (response.statusCode == 200) {
        return Right(UpdateInventoryResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(message: UpdateInventoryResponseModel.fromJson(response.data).message!));
      } else {
        return Left(Failure.clientFailure(message: UpdateInventoryResponseModel.fromJson(response.data).message!));
      }
    } catch (e) {
      return Left(Failure.clientFailure(message: 'Something went wrong, can\'t connect to server'));
    }
  }

  @override
  Future<Either<Failure, UpdateInventoryImageResponse>> updateImageInventory(
      {required TokenModel tokenModel,
      required UpdateInventoryImageQurrey updateInventoryImageQurrey,
      required FormData formData}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.put(ApiEndPoints.inventoryImage,
          data: formData, queryParameters: updateInventoryImageQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(UpdateInventoryImageResponse.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message:
                UpdateInventoryImageResponse.fromJson(response.data).message!));
      } else {
        return Left(Failure.clientFailure(
            message:
                UpdateInventoryImageResponse.fromJson(response.data).message!));
      }
    } catch (e) {
      return Left(Failure.clientFailure(message: 'something went wrong'));
    }
  }
}
