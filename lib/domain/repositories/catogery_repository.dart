import 'package:dartz/dartz.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/catogery/catogery_response_model/catogery_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/delete_catogery_qurrey/delete_catogery_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/catogery/get_catogerey_response_model/get_catogerey_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/post_catogery_model/post_catogery_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/put_catogery_model/put_catogery_model.dart';

abstract class CatogeryRepository {
  Future<Either<Failure, CatogeryResponseModel>> addCatogery(
      {
      required PostCatogeryModel postCatogeryModel});

  Future<Either<Failure, GetCatogereyResponseModel>> getCatogery();

  Future<Either<Failure, CatogeryResponseModel>> editCatogery(
      {required PutCatogeryModel putCatogeryModel
      });

  Future<Either<Failure, CatogeryResponseModel>> deleteCatogery(
      {required DeleteCatogeryQurrey deleteCatogeryQurrey
      });
}
