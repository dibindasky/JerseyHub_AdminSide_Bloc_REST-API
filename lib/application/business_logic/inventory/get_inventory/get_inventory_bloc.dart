import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/data/api/inventry/inventory.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_inventory_r_espoonse_model/get_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/get/get_response_qurrey/get_response_qurrey.dart';

part 'get_inventory_event.dart';
part 'get_inventory_state.dart';
part 'get_inventory_bloc.freezed.dart';

class GetInventoryBloc extends Bloc<GetInventoryEvent, GetInventoryState> {
  GetInventoryBloc() : super(GetInventoryState.initial()) {
    final InventoryApi inventoryApi = InventoryApi();

    on<_GetInventoryCall>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokens = await SharedPref.getToken();
      final response = await inventoryApi.getInventory(
          getResponseQurrey: event.getResponseQurrey, tokenModel: tokens);
      response.fold(
          (failure) => emit(state.copyWith(isLoading: false, hasError: true)),
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              getInventoryResponseModel: getInventoryResponseModel)));
    });
  }
}
