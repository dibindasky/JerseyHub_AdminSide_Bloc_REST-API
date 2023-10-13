import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/inventory/add/add_inventory_response_model/add_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_qurrey/delete_inventory_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_response_model/delete_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';

abstract class InventoryRepository {
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData, required TokenModel tokenModel});
  Future<Either<Failure, DeleteInventoryResponseModel>> deleteInventory(
      {required TokenModel tokenModel,
      required DeleteInventoryQurrey deleteInventory});
}
