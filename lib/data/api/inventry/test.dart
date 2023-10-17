import 'package:dio/dio.dart';

final Dio dio = Dio();
Map<String, dynamic> json = {"data": "data", "id": 1};

Future postRequest() async {
  final response = await dio.post('url here', data: json);
}
