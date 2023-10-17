part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCaegory() = _GetCaegory;
  const factory CategoryEvent.addCaegory(
      {required PostCatogeryModel postCatogeryModel}) = _AddCaegory;
  const factory CategoryEvent.deleteCaegory(
      {required DeleteCatogeryQurrey deleteCatogeryQurrey}) = _DeleteCaegory;
  const factory CategoryEvent.renameCaegory(
      {required PutCatogeryModel putCatogeryModel}) = _RenameCaegory;
  const factory CategoryEvent.tapEdit({required String category}) = _TapEdit;
}
