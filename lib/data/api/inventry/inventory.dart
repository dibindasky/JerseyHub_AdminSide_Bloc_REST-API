import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/inventory/add/add_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';
import 'package:jerseyhub_admin/domain/repositories/inventory_repository.dart';

class InventoryApi implements InventoryRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, AddInventoryResponseModel>> addInventory(
      {required FormData formData,required TokenModel tokenModel}) async {
    try {
      print(tokenModel.accessToken);
      print(tokenModel.refreshToken);

      _dio.options.headers['content-Type'] = 'multipart/form-data';
                  _dio.options.headers['AccessToken'] = tokenModel.accessToken;
                  _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
                  print('before request => ${formData.fields.toString()}');
      final response =
          await _dio.post(ApiEndPoints.addInventory, data: formData);
      print('after request message => ${response.data['message']}');
      print('after request error => ${response.data['error']}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddInventoryResponseModel());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } on DioException catch (dioError) {
      print('dio message => ${dioError.message.toString()} \n dio error => ${dioError.error.toString()}');
      return Left(Failure.clientFailure());
    } catch (e) {
      print('error => $e');
      return Left(Failure.clientFailure());
    }
  }
}
