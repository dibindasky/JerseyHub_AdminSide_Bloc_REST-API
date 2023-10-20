import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/application/presentation/utils/image_picker/image_picker.dart';
import 'package:jerseyhub_admin/data/services/inventry/inventory.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/inventory/add/add_inventory_response_model/add_inventory_response_model.dart';
import 'package:jerseyhub_admin/domain/models/inventory/image/image_model.dart';

part 'add_inventory_event.dart';
part 'add_inventory_state.dart';
part 'add_inventory_bloc.freezed.dart';

class AddInventoryBloc extends Bloc<AddInventoryEvent, AddInventoryState> {
  final InventoryApi inventoryApi = InventoryApi();
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productQuantityController =
      TextEditingController();
  final GlobalKey<FormState> inventoryKey = GlobalKey<FormState>();

  AddInventoryBloc() : super(AddInventoryState.initial()) {
    on<_AddJersey>((event, emit) async {
      emit(AddInventoryState.initial().copyWith(isLoading: true));
      final tockens = await SharedPref.getToken();
      final result = await inventoryApi.addInventory(
          formData: event.formData, tokenModel: tockens);
      result.fold((failure) {
        emit(state.copyWith(isLoading: false, hasError: true));
      }, (addInventoryResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            isAdded: true,
            addInventoryResponseModel: addInventoryResponseModel));
      });
    });

    on<_DecrementQuantity>((event, emit) {
      if (productQuantityController.text.isEmpty) {
        productQuantityController.text = '0';
      }
      int quantity = int.parse(productQuantityController.text);
      if (quantity > 0) {
        productQuantityController.text = (quantity - 1).toString();
      }
    });

    on<_IncrementQuantity>((event, emit) {
      if (productQuantityController.text.isEmpty) {
        productQuantityController.text = '0';
      }
      int quantity = int.parse(productQuantityController.text);
      productQuantityController.text = (quantity + 1).toString();
    });

    on<_SelectCatogory>((event, emit) {
      emit(state.copyWith(
          catogoryId: event.selectedCatogory, catogory: event.catogory));
    });

    on<_PickSize>((event, emit) async {
      emit(state.copyWith(size: event.size));
    });

    on<_AddImage>((event, emit) async {
      final image = await PickImage.getImageFromGallery();
      emit(state.copyWith(image: image));
    });
  }
}
