import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unblock_user_qurrey/block_unblock_user_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unlbock_user_response_model/block_unlbock_user_response_model.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_qurrey/get_users_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_response_model/get_users_response_model.dart';
import 'package:jerseyhub_admin/domain/repositories/users_repository.dart';

class UsersApi implements UsersRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, GetUsersResponseModel>> getUsers(
      {required GetUsersQurrey getUsersQurrey,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.get(ApiEndPoints.getUsers,
          queryParameters: getUsersQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetUsersResponseModel());
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
  Future<Either<Failure, BlockUnlbockUserResponseModel>> blockUser(
      {required BlockUnblockUserQurrey blockUnblockUserQurrey,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.put(ApiEndPoints.blockUsers,
          queryParameters: blockUnblockUserQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(BlockUnlbockUserResponseModel());
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
  Future<Either<Failure, BlockUnlbockUserResponseModel>> unBlockUser(
      {required BlockUnblockUserQurrey blockUnblockUserQurrey,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['AccessToken'] = tokenModel.accessToken;
      _dio.options.headers['RefreshToken'] = tokenModel.refreshToken;
      final response = await _dio.get(ApiEndPoints.unblockUsers,
          queryParameters: blockUnblockUserQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(BlockUnlbockUserResponseModel());
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
