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
                String adminAcces='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiIiLCJyb2xlIjoiYWRtaW4iLCJleHAiOjE2OTU4Mjg3MTEsImlhdCI6MTY5NTgyNzUxMX0.0RVO2yHifzAceewdeJYe9_v0sSra3nMIZQtgjHprYpk';
                String adminRefresh='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiIiLCJyb2xlIjoiYWRtaW4iLCJleHAiOjE2OTg0MTk1MTEsImlhdCI6MTY5NTgyNzUxMX0.TWsmSP9GLeYSKThQ7oq4bRKHhQfHajKXoILQ-iT7IzM';
                String token =
                    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJkaWJpbkBnbWFpbC5jb20iLCJyb2xlIjoiY2xpZW50IiwiZXhwIjoxNjk1OTYxNzQ0LCJpYXQiOjE2OTU3ODg5NDR9.3Jx6qO_8jDdoqzuen1jihBe4wl4SwSIcmyGoxS-iQkE';
                Dio dio = Dio();
                try {
                  // dio.options.baseUrl='http://192.168.195.227:3000';
                  dio.options.headers['content-Type'] = 'application/json';
                  dio.options.headers["authorization"] = adminAcces;
                //  dio.options.headers[''];
                  Response response = await dio.get(
                    'http://192.168.195.227:3000/admin/category/add',
                  );
                  print(response.statusCode);
                  testRsposnseCode = response.statusCode.toString();
                  testRsposnse = response.data.toString();
                 // print(testRsposnse);
                }on DioException catch (d){
                  print(d.error.toString());
                  print(d.message);
                }
                 catch (e) {
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
