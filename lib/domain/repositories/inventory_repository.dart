import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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

abstract class InventoryRepository {
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData, required TokenModel tokenModel});

  Future<Either<Failure, GetInventoryResponseModel>> getInventory(
      {required GetResponseQurrey getResponseQurrey,
      required TokenModel tokenModel});

  Future<Either<Failure, UpdateInventoryResponseModel>> updateStockInventory(
      {required UpdateInventoryModel updateInventoryModel,
      required TokenModel tokenModel});

  Future<Either<Failure, DeleteInventoryResponseModel>> deleteInventory(
      {required TokenModel tokenModel,
      required DeleteInventoryQurrey deleteInventory});

  Future<Either<Failure, UpdateInventoryImageResponse>> updateImageInventory(
      {required TokenModel tokenModel,
      required UpdateInventoryImageQurrey updateInventoryImageQurrey,
      required FormData formData});
}
