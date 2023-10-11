import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/application/presentation/screens/inventory/add_inventory_screen.dart';
import 'package:jerseyhub_admin/application/presentation/utils/image_picker/image_picker.dart';
import 'package:jerseyhub_admin/data/api/inventry/inventory.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/inventory/add/add_inventory_response_model.dart';

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
  final sizeList =['S','M','L','XL','XXL'];

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
      int id = catogeryItems
          .indexWhere((element) => element == event.selectedCatogory);
      emit(state.copyWith(catogory: event.selectedCatogory, catogoryId: id));
    });

    on<_PickSize>((event, emit) async {
      final List<bool> list = [];
      String sizeString=''; 
      for (int i = 0; i < 5; i++) {
        if (i == event.index) {
          list.add(!state.sizes[i]);
        } else {
          list.add(state.sizes[i]);
        }
        if(list[i]){
          if(sizeString.isNotEmpty){
            sizeString+=',';
          }
          sizeString+=sizeList[i];
        }
      }
      emit(state.copyWith(sizes: list,size: sizeString));
    });

    on<_AddImage>((event, emit) async {
      emit(state.copyWith(image: await PickImage.getImageFromGallery()));
    });
  }
}
