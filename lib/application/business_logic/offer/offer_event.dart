part of 'offer_bloc.dart';

@freezed
class OfferEvent with _$OfferEvent {
  const factory OfferEvent.getOffers() = _GetOffers;
  const factory OfferEvent.addOffer({required AddOfferModel addOfferModel}) =
      _AddOffer;
  const factory OfferEvent.deleteOffer(
      {required DeleteOfferQurrey deleteOfferQurrey}) = _DeleteOffer;
  const factory OfferEvent.selectCatogory(
      {required int selectedCatogory,
      required String catogory}) = _SelectCatogory;
}
