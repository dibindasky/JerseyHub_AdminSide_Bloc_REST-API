part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMessage,
      required bool isupdating,
      String? message,
      GetCatogereyResponseModel? getCatogereyResponseModel}) = _Initial;

  factory CategoryState.initial() => const CategoryState(
      isLoading: true,
      showMessage: false,
      isAdding: false,
      hasError: false,
      isDone: false,
      isupdating: false);
}
