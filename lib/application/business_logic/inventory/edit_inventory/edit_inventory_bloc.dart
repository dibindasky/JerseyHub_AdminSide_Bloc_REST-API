import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/application/presentation/utils/image_picker/image_picker.dart';
import 'package:jerseyhub_admin/data/api/inventry/inventory.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/inventory/delete/delete_inventory_qurrey/delete_inventory_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/image/image_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_image_qurrey/update_inventory_image_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/inventory/update/update_inventory_model/update_inventory_model.dart';

part 'edit_inventory_event.dart';
part 'edit_inventory_state.dart';
part 'edit_inventory_bloc.freezed.dart';

class EditInventoryBloc extends Bloc<EditInventoryEvent, EditInventoryState> {
  final InventoryApi inventoryApi = InventoryApi();
  final TextEditingController stockUpdateController =
      TextEditingController(text: '0');
  final GlobalKey<FormState> stockFormKey = GlobalKey<FormState>();
  EditInventoryBloc() : super(EditInventoryState.initial()) {

    on<_SetStock>((event, emit) {
      emit(state.copyWith(stock: event.stock,isUpdated: false,hasError: false, isDeleted: false,networkImage: event.image));
    });

    on<_AddStock>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final tokens = await SharedPref.getToken();
      final result = await inventoryApi.updateStockInventory(
          updateInventoryModel: event.updateInventoryModel, tokenModel: tokens);
      result.fold(
        (failure) => emit(
          state.copyWith(
              isLoading: false,isUpdated: false,
              hasError: true,
              isDeleted: false,
              message: 'something went wrong, please try again'),
        ),
        (updateInventoryResponseModel) {
          stockUpdateController.text = '0';
          emit(
            state.copyWith(
                isLoading: false,isUpdated: false,
                hasError: false,
                isDeleted: false,
                stock: updateInventoryResponseModel.data!.stock!,
                message: 'stock updated successfully'),
          );
        },
      );
    });

    on<_DeleteInventory>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final tokens = await SharedPref.getToken();
      final result = await inventoryApi.deleteInventory(
          tokenModel: tokens, deleteInventory: event.deleteInventoryQurrey);
      result.fold(
        (failure) => emit(
          state.copyWith(
              isLoading: false,
              hasError: true,
              isDeleted: false,
              message: 'something went wrong, please try again'),
        ),
        (deleteInventoryResponseModel) {
          stockUpdateController.text = '0';
          emit(
            state.copyWith(
                isLoading: false,
                hasError: false,
                isDeleted: true,
                message: 'inventory deleted successfully'),
          );
        },
      );
    });

    on<_UpdateImage>((event, emit) async {
      final image = await PickImage.getImageFromGallery();
      if(image == null)return;
      emit(state.copyWith(isImageUploading: true));
      Map<String,dynamic> imageMap={"image":image.multipartFile};
      final tokens = await SharedPref.getToken();
      final result = await inventoryApi.updateImageInventory(
          tokenModel: tokens,
          formData: FormData.fromMap(imageMap),
          updateInventoryImageQurrey: event.updateInventoryImageQurrey);
      result.fold(
          (failure) => emit(
              state.copyWith(hasError: true, message: 'can\'t update image',isImageUploading: false)),
          (getInventoryImageResponse) {
            emit(state.copyWith(hasError: false,isImageUploading: false, message: 'image updated sussfully',isUpdated: true,image: image));
          });
    });

    on<_IncrementQuantity>((event, emit) {
      int quantity = int.parse(stockUpdateController.text.trim());
      stockUpdateController.text = (quantity + 1).toString();
    });

    on<_DecrementQuantity>((event, emit) {
      int quantity = int.parse(stockUpdateController.text.trim());
      if (quantity > 0) {
        stockUpdateController.text = (quantity - 1).toString();
      }
    });
  }
}
