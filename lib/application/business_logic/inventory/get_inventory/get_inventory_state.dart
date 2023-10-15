part of 'get_inventory_bloc.dart';

@freezed
class GetInventoryState with _$GetInventoryState {
  const factory GetInventoryState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      GetInventoryResponseModel? getInventoryResponseModel}) = _Initial;
  factory GetInventoryState.initial() =>
      const GetInventoryState(isLoading: false, hasError: false);
}
