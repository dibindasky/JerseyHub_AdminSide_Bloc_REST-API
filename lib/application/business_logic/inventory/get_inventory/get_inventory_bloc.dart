import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/inventory.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';
import 'package:jerseyhub_admin/domain/repositories/inventory_repository.dart';

part 'get_inventory_event.dart';
part 'get_inventory_state.dart';
part 'get_inventory_bloc.freezed.dart';

class GetInventoryBloc extends Bloc<GetInventoryEvent, GetInventoryState> {
  final InventoryRepository inventoryRepository;
  int page = 1;
  bool isScrollLoading = false;

  GetInventoryBloc(this.inventoryRepository)
      : super(GetInventoryState.initial()) {
    on<_GetInventoryCall>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokens = await SharedPref.getToken();
      page = 1;
      final response = await inventoryRepository.getInventory(
          getResponseQurrey: GetResponseQurrey(page: page), tokenModel: tokens);
      response.fold(
          (failure) => emit(state.copyWith(isLoading: false, hasError: true)),
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              inventories: getInventoryResponseModel.data)));
    });
    on<_NextPage>((event, emit) async {
      emit(state.copyWith(loadMore: true));
      isScrollLoading = true;
      final tokenModel = await SharedPref.getToken();
      page += 1;
      final result = await inventoryRepository.getInventory(
          getResponseQurrey: GetResponseQurrey(page: page),
          tokenModel: tokenModel);
      result.fold(
        (failure) => emit(state.copyWith(loadMore: false)),
        (getInventoryResponseModel) {
          if (getInventoryResponseModel.data == null) {
            emit(state.copyWith(loadMore: false));
            return;
          }
          emit(
            state.copyWith(loadMore: false, inventories: [
              ...state.inventories!,
              ...getInventoryResponseModel.data!
            ]),
          );
        },
      );
      isScrollLoading = false;
    });
  }
}
