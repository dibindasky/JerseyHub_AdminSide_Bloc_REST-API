part of 'edit_inventory_bloc.dart';

@freezed
class EditInventoryState with _$EditInventoryState {
  const factory EditInventoryState(
      {required bool isLoading,
      String? message,
      ImageModel? image,
      String? networkImage,
      required bool isImageUploading,
      required bool hasError,
      required int stock,
      required bool isUpdated,
      required bool isDeleted}) = _Initial;
  factory EditInventoryState.initial() => const EditInventoryState(
      isLoading: false,
      hasError: false,
      stock: 0,
      isImageUploading: false,
      isUpdated: false,
      isDeleted: false);
}
