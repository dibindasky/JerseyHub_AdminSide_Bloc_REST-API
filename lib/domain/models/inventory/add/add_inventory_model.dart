import 'dart:io';

class AddInventoryModel {
  String catogoryId;
  String productName;
  String size;
  String price;
  String stock;
  File image;
  AddInventoryModel(
      {required this.catogoryId,
      required this.productName,
      required this.image,
      required this.price,
      required this.size,
      required this.stock});
}
