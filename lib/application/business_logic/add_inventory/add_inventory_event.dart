part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryEvent with _$AddInventoryEvent {
  const factory AddInventoryEvent.addImage() = _AddImage;
  const factory AddInventoryEvent.pickSize({required int index}) = _PickSize;
  const factory AddInventoryEvent.selectCatogory({required String selectedCatogory}) = _SelectCatogory;
  const factory AddInventoryEvent.incrementQuantity() = _IncrementQuantity;
  const factory AddInventoryEvent.decrementQuantity() = _DecrementQuantity;
  const factory AddInventoryEvent.addJersey({required FormData formData}) =  _AddJersey;
}