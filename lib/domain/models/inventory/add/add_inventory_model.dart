import 'dart:io';

class AddInventoryModel {
  String catogoryId;
  String productName;
  List<String>? sizes;
  String price;
  String stock;
  File image;
  AddInventoryModel(
      {required this.catogoryId,
      required this.productName,
      required this.image,
      required this.price,
      this.sizes,
      required this.stock});
}
