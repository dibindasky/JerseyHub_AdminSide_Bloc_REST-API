import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/data/services/catogery/catogery.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/catogery/delete_catogery_qurrey/delete_catogery_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/catogery/get_catogerey_response_model/get_catogerey_response_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/post_catogery_model/post_catogery_model.dart';
import 'package:jerseyhub_admin/domain/models/catogery/put_catogery_model/put_catogery_model.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final TextEditingController categoryController = TextEditingController();
  final GlobalKey<FormState> categoryKey = GlobalKey<FormState>();
  final Map<String, int> catogoryMap = {};

  final CatogeryApi catogeryApi = CatogeryApi();
  String? currentCategory;
  CategoryBloc() : super(CategoryState.initial()) {
    on<_GetCaegory>((event, emit) async {
      emit(state.copyWith(isLoading: true, isAdding: false, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await catogeryApi.getCatogery(tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              isAdding: false,
              isDone: false,
              isupdating: false,
              message: null)), (getCatogereyResponseModel) {
        categoryController.text = '';
        for (var cat in getCatogereyResponseModel.data!) {
          catogoryMap[cat.category!] = cat.id!;
        }
        emit(state.copyWith(
            isLoading: false,
            isAdding: false,
            hasError: false,
            isDone: false,
            message: null,
            isupdating: false,
            getCatogereyResponseModel: getCatogereyResponseModel));
      });
    });

    on<_AddCaegory>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isupdating: false,
          isAdding: true,
          isDone: false,
          message: null));
      final tokenModel = await SharedPref.getToken();
      final result = await catogeryApi.addCatogery(
          tokenModel: tokenModel, postCatogeryModel: event.postCatogeryModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              isAdding: false,
              isupdating: false,
              isDone: false,
              message: null)), (getCatogereyResponseModel) {
        emit(state.copyWith(
            isDone: true, message: 'Catogery added Successfully'));
        add(const CategoryEvent.getCaegory());
      });
    });

    on<_DeleteCaegory>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isAdding: false,
          isDone: false,
          isupdating: false,
          message: null));
      final tokenModel = await SharedPref.getToken();
      final result = await catogeryApi.deleteCatogery(
          tokenModel: tokenModel,
          deleteCatogeryQurrey: event.deleteCatogeryQurrey);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              isAdding: false,
              isupdating: false,
              isDone: false,
              message: null)), (getCatogereyResponseModel) {
        emit(state.copyWith(
            isDone: true, message: 'Catogery deleted Successfully'));
        add(const CategoryEvent.getCaegory());
      });
    });

    on<_RenameCaegory>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isupdating: false,
          isDone: false,
          message: null));
      final tokenModel = await SharedPref.getToken();
      final result = await catogeryApi.editCatogery(
          tokenModel: tokenModel, putCatogeryModel: event.putCatogeryModel);
      result.fold(
          (failure) => emit(state.copyWith(
                isLoading: false,
                hasError: true,
                isAdding: false,
                message: null,
                isDone: false,
                isupdating: false,
              )), (getCatogereyResponseModel) {
        emit(state.copyWith(
            isDone: true, message: 'Catogery updated Successfully'));
        add(const CategoryEvent.getCaegory());
      });
    });

    on<_TapEdit>((event, emit) {
      categoryController.text = event.category;
      currentCategory = event.category;
      emit(state.copyWith(isupdating: true));
    });
  }
}
