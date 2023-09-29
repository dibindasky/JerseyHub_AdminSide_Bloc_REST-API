import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_model/login_model.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_response/login_response.dart';
import 'package:jerseyhub_admin/domain/repositories/authentication_repository.dart';



class ApiAuth extends AuthRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, LoginResponse>> signIn(LoginModel loginModel) async {
    try {
      final response =
          await _dio.post(ApiEndPoints.signIn, data: loginModel.toJson());
      if (response.statusCode == 200) {
        return Right(LoginResponse.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(message: response.data['error']));
      } else {
        return Left(Failure.clientFailure(message:  response.data['error']));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure.clientFailure(message: dioError.message.toString()));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(Failure.serverFailure(message: e.toString()));
    }
  }
}
