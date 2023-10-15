import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/catogery/catogery_response_model/catogery_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/delete_catogery_qurrey/delete_catogery_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/catogery/get_catogerey_response_model/get_catogerey_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/post_catogery_model/post_catogery_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/put_catogery_model/put_catogery_model.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';
import 'package:jerseyhub_admin/domain/repositories/catogery_repository.dart';

class CatogeryApi implements CatogeryRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, CatogeryResponseModel>> addCatogery(
      {required TokenModel tokenModel,
      required PostCatogeryModel postCatogeryModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.post(ApiEndPoints.catogery,
          data: postCatogeryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(CatogeryResponseModel());
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
  Future<Either<Failure, CatogeryResponseModel>> deleteCatogery(
      {required DeleteCatogeryQurrey deleteCatogeryQurrey,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.delete(ApiEndPoints.catogery,
          queryParameters: deleteCatogeryQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(CatogeryResponseModel());
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
  Future<Either<Failure, CatogeryResponseModel>> editCatogery(
      {required PutCatogeryModel putCatogeryModel,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.put(ApiEndPoints.catogery,
          data: putCatogeryModel.toJson());
      if (response.statusCode == 200) {
        return Right(CatogeryResponseModel());
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
  Future<Either<Failure, GetCatogereyResponseModel>> getCatogery(
      {required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.get(ApiEndPoints.catogery);
      if (response.statusCode == 200) {
        return Right(GetCatogereyResponseModel());
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
