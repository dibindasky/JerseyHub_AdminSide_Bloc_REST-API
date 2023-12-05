import 'package:dartz/dartz.dart';
import 'package:jerseyhub_admin/domain/core/failure/failures.dart';
import 'package:jerseyhub_admin/domain/models/offer/add_offer_model/add_offer_model.dart';
import 'package:jerseyhub_admin/domain/models/offer/delete_offer_qurrey/delete_offer_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/offer/get_offer_response_model/get_offer_response_model.dart';
import 'package:jerseyhub_admin/domain/models/offer/offer_response_model/offer_response_model.dart';

abstract class OfferRepository {
  Future<Either<Failure, OfferResponseModel>> addOffer(
      {required AddOfferModel addOfferModel});
  Future<Either<Failure, GetOfferResponseModel>> getOffer();
  Future<Either<Failure, OfferResponseModel>> deleteOffer(
      {required DeleteOfferQurrey deleteCoupenQurrey});
}
