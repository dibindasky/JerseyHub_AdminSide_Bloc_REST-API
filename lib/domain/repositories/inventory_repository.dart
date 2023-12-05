import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/inventory/add/add_inventory_response_model/add_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_qurrey/delete_inventory_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_response_model/delete_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/get_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/edit_inventoru_details_model/edit_inventoru_details_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/edit_inventory_details_qurrey/edit_inventory_details_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/edit_inventory_response_model/edit_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_qurrey/update_inventory_image_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_response/update_inventory_image_response.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_model/update_inventory_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_response_model/update_inventory_response_model.dart';

abstract class InventoryRepository {
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData});

  Future<Either<Failure, GetInventoryResponseModel>> getInventory(
      {required GetResponseQurrey getResponseQurrey});

  Future<Either<Failure, UpdateInventoryResponseModel>> updateStockInventory(
      {required UpdateInventoryModel updateInventoryModel});

  Future<Either<Failure, DeleteInventoryResponseModel>> deleteInventory(
      {required DeleteInventoryQurrey deleteInventory});

  Future<Either<Failure, UpdateInventoryImageResponse>> updateImageInventory(
      {required UpdateInventoryImageQurrey updateInventoryImageQurrey,
      required FormData formData});

  Future<Either<Failure, EditInventoryResponseModel>> editInventoryDetails(
      {required EditInventoryDetailsQurrey editInventoryDetailsQurrey,
      required EditInventoruDetailsModel editInventoruDetailsModel});
}
