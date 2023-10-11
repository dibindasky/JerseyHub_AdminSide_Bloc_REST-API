import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class PickImage {
  static Future<File?> getImageFromGallery() async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final tempDir = await getTemporaryDirectory();
      final path = tempDir.path;
      final compressedImage = await FlutterImageCompress.compressAndGetFile(
          pickedImage.path, '$path/newImage.jpg',
          quality: 25);
      return File(compressedImage!.path);
    }
    return null;
  }
}
