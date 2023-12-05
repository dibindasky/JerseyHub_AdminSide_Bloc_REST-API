import 'package:dartz/dartz.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unblock_user_qurrey/block_unblock_user_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unlbock_user_response_model/block_unlbock_user_response_model.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_qurrey/get_users_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_response_model/get_users_response_model.dart';

abstract class UsersRepository {
  Future<Either<Failure, GetUsersResponseModel>> getUsers(
      {required GetUsersQurrey getUsersQurrey});
  Future<Either<Failure, BlockUnlbockUserResponseModel>> blockUser(
      {required BlockUnblockUserQurrey blockUnblockUserQurrey});
  Future<Either<Failure, BlockUnlbockUserResponseModel>> unBlockUser(
      {required BlockUnblockUserQurrey blockUnblockUserQurrey});
}
