import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
                String adminAcces =
                    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiIiLCJyb2xlIjoiYWRtaW4iLCJleHAiOjE2OTU5NjI0MjIsImlhdCI6MTY5NTk2MTIyMn0.SDYtY1JbK_1xMlRkBBIDNOhe3G7ZNCMDtueopsc_ErE';
                String adminRefresh =
                    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiIiLCJyb2xlIjoiYWRtaW4iLCJleHAiOjE2OTg1NTMyMjIsImlhdCI6MTY5NTk2MTIyMn0.CEbQNJ87Xptxg_0zCOIKWBZz2RqhFa7MNlIYG7GTOb0';
                String token =
                    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJkaWJpbkBnbWFpbC5jb20iLCJyb2xlIjoiY2xpZW50IiwiZXhwIjoxNjk1OTYxNzQ0LCJpYXQiOjE2OTU3ODg5NDR9.3Jx6qO_8jDdoqzuen1jihBe4wl4SwSIcmyGoxS-iQkE';
                Dio dio = Dio();
                try {
                  // dio.options.baseUrl='http://192.168.195.227:3000';
                  dio.options.headers['content-Type'] = 'application/json';
                  dio.options.headers['AccessToken'] = adminAcces;
                  dio.options.headers['RefreshToken'] = adminRefresh;
                  Response response = await dio.post(
                      'http://192.168.195.227:3000/admin/category/add',
                      data: {'category': 'Football', 'id': 0});
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
