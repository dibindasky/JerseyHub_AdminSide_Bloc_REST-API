part of 'get_inventory_bloc.dart';

@freezed
class GetInventoryEvent with _$GetInventoryEvent {
  const factory GetInventoryEvent.getInventoryCall() = _GetInventoryCall;
  const factory GetInventoryEvent.nextPage() = _NextPage;
}
