import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jerseyhub_admin/domain/models/offer/add_offer_model/add_offer_model.dart';
import 'package:jerseyhub_admin/domain/models/offer/delete_offer_qurrey/delete_offer_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/offer/get_offer_response_model/get_offer_response_model.dart';
import 'package:jerseyhub_admin/domain/repositories/offer_repository.dart';

part 'offer_event.dart';
part 'offer_state.dart';
part 'offer_bloc.freezed.dart';

@injectable
class OfferBloc extends Bloc<OfferEvent, OfferState> {
  final TextEditingController offerAmountController = TextEditingController();

  final OfferRepository offerApi;

  OfferBloc(this.offerApi) : super(OfferState.initial()) {
    on<_GetOffers>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));

      final result = await offerApi.getOffer();

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong, please refresh')),
          (getOfferResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            getOfferResponseModel: getOfferResponseModel));
      });
    });

    on<_AddOffer>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));

      final result =
          await offerApi.addOffer(addOfferModel: event.addOfferModel);

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'can\'t add offer, please try again')),
          (getOfferResponseModel) {
        emit(state.copyWith(
            isDone: true,
            hasError: false,
            message: 'offer added successfully'));

        add(const OfferEvent.getOffers());
      });
    });

    on<_DeleteOffer>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));

      final result = await offerApi.deleteOffer(
          deleteCoupenQurrey: event.deleteOfferQurrey);

      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'can\'t remove offer, please try again')),
          (getOfferResponseModel) {
        emit(state.copyWith(
            isDone: true,
            hasError: false,
            message: 'Offer removed successfully'));

        add(const OfferEvent.getOffers());
      });
    });

    on<_SelectCatogory>((event, emit) {
      emit(state.copyWith(
          catogoryId: event.selectedCatogory, catogory: event.catogory));
    });
  }
}
