import 'package:dartz/dartz.dart';
import 'package:jerseyhub_admin/domain/core/failure/error.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_model/login_model.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_response/login_response.dart';

abstract class AuthRepository {
  Future<Either<ErrorMsg, LoginResponse>> signIn(LoginModel loginModel);
}
