import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jerseyhub_admin/data/services/api_services.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/catogery/catogery_response_model/catogery_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/delete_catogery_qurrey/delete_catogery_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/catogery/get_catogerey_response_model/get_catogerey_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/post_catogery_model/post_catogery_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/put_catogery_model/put_catogery_model.dart';
import 'package:jerseyhub_admin/domain/repositories/catogery_repository.dart';

@LazySingleton(as: CatogeryRepository)
@injectable
class CatogeryApi implements CatogeryRepository {
  final ApiService apiService = ApiService(
      baseUrl: ApiEndPoints.baseUrl,
      dio: Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl)));
  @override
  Future<Either<Failure, CatogeryResponseModel>> addCatogery(
      {required PostCatogeryModel postCatogeryModel}) async {
    try {
      final response = await apiService.post(ApiEndPoints.catogery,
          data: postCatogeryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(CatogeryResponseModel.fromJson(response.data));
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
      {required DeleteCatogeryQurrey deleteCatogeryQurrey}) async {
    try {
      final response = await apiService.delete(ApiEndPoints.catogery,
          queryParameters: deleteCatogeryQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(CatogeryResponseModel.fromJson(response.data));
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
      {required PutCatogeryModel putCatogeryModel}) async {
    try {
      final response = await apiService.put(ApiEndPoints.catogery,
          data: putCatogeryModel.toJson());
      if (response.statusCode == 200) {
        return Right(CatogeryResponseModel.fromJson(response.data));
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
  Future<Either<Failure, GetCatogereyResponseModel>> getCatogery() async {
    try {
      final response = await apiService.get(ApiEndPoints.catogery);
      if (response.statusCode == 200) {
        return Right(GetCatogereyResponseModel.fromJson(response.data));
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
