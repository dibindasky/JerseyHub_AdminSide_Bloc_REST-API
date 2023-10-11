part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryState with _$AddInventoryState {
  const factory AddInventoryState(
      {required bool hasError,
      required bool isLoading,
      required bool isAdded,
      required List<bool> sizes,
      File? image,
      String? catogory,
      String? size,
      int? catogoryId,
            AddInventoryResponseModel? addInventoryResponseModel}) = _Initial;
  factory AddInventoryState.initial() =>
      const AddInventoryState(hasError: false, isLoading: false,isAdded: false,sizes: [false,false,false,false,false]);
}
