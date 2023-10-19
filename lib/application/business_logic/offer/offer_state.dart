part of 'offer_bloc.dart';

@freezed
class OfferState with _$OfferState {
  const factory OfferState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMessage,
      String? catogory,
      int? catogoryId,
      String? message,
      GetOfferResponseModel? getOfferResponseModel}) = _Initial;

  factory OfferState.initial() => const OfferState(
      isLoading: true,
      showMessage: false,
      isAdding: false,
      hasError: false,
      isDone: false);
}
