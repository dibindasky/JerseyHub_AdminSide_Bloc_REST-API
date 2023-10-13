import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jerseyhub_admin/domain/models/inventory/image/image_model.dart';

class PickImage {
  static Future<ImageModel?> getImageFromGallery() async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final fileImage = File(pickedImage.path);
      return ImageModel(
          fileImage: fileImage,
          multipartFile: await MultipartFile.fromFile(fileImage.path));
    }
    return null;
  }
}
