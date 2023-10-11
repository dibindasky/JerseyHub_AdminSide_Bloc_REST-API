import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';

class ApiTestScreen extends StatefulWidget {
  ApiTestScreen({super.key});

  @override
  State<ApiTestScreen> createState() => _ApiTestScreenState();
}

class _ApiTestScreenState extends State<ApiTestScreen> {
  String testRsposnse = 'response data';

  String testRsposnseCode = 'status code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('api tester'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                print('pressed');
                final token=await SharedPref.getToken();
                String adminAcces = token.accessToken;
                String adminRefresh =token.refreshToken;
                Dio dio = Dio();
                try {
                  // dio.options.baseUrl='http://192.168.195.227:3000';
                  dio.options.headers['content-Type'] = 'application/json';
                  dio.options.headers['AccessToken'] = adminAcces;
                  dio.options.headers['RefreshToken'] = adminRefresh;
                  Response response = await dio.post(
                      'http://192.168.195.227:3000/admin/category/add',
                      data: {'category': 'Basketball', 'id': 2});
                  print(response.statusCode);
                  testRsposnseCode = response.statusCode.toString();
                  testRsposnse = response.data.toString();
                  // print(testRsposnse);
                } on DioException catch (d) {
                  print('dio exception => ${d.error.toString()}');
                  print('dio message => ${d.message}');
                } catch (e) {
                  print(e.toString());
                }
                setState(() {});
              },
              child: const Text('test api'),
            ),
            Text(testRsposnse),
            Text(testRsposnseCode)
          ],
        ),
      )),
    );
  }
}

