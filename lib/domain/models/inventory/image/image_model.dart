import 'dart:io';

import 'package:dio/dio.dart';

class ImageModel {
  File fileImage;
  MultipartFile multipartFile;
  String? netWorkImage;
  ImageModel(
      {required this.fileImage,
      required this.multipartFile,
      this.netWorkImage});
}
