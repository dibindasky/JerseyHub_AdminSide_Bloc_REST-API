import 'package:dio/dio.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/core/api_endpoints/api_endpoints.dart';

class ApiService {
  final Dio dio;
  final String baseUrl;

  ApiService({required this.dio, required this.baseUrl});

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response =
          await dio.get(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response = await dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response = await dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SharedPref.getToken().then((token) => token.accessToken);
      dio.options.headers.addAll(
        {
          'Authorization': accessToken,
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      final response =
          await dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401) {
        await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  _refreshAccessToken() async {
    try {
      final token =
          await SharedPref.getToken().then((token) => token.refreshToken);
      final response = await Dio(
              BaseOptions(baseUrl: baseUrl, headers: {'RefreshToken': token}))
          .get(ApiEndPoints.refreshUrl);
      await SharedPref.setAccessToken(accessToken: response.data.toString());
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final accessToken =
        await SharedPref.getToken().then((token) => token.accessToken);
    dio.options.headers['Authorization'] = accessToken;
    return await dio.request(requestOptions.path,
        queryParameters: requestOptions.queryParameters);
  }
}

// ignore_for_file: import_of_legacy_library_into_null_safe

// import 'dart:io';

// import 'package:dio/dio.dart';

// import 'services/secure_storage_service.dart';

// class ApiService {
//   final String baseUrl;
//   late Dio _dio;
//   // Map<String, dynamic>? header;

//   ApiService(this.baseUrl, Dio dio) {
//     // header ??= {'content-Type': 'application/json'};
//     _dio = dio;
//     _dio.options.baseUrl = baseUrl;
//     // ..httpClientAdapter
//     // ..options.headers = header;
//     // _dio.interceptors.add(InterceptorsWrapper(onRequest:
//     //     (RequestOptions options, RequestInterceptorHandler handler) async {
//     //   final accessToken = await SharedPref.getToken()
//     //       .then((tokenModel) => tokenModel.accessToken);
//     //   var customHeaders = {'Authorization': "Bearer $accessToken"};
//     //   print("onRequest => () -- Access Token: $accessToken");
//     //   options.headers.addAll(customHeaders);
//     // if (await NoInternetException().isConnectedToInternet() == false) {
//     //   throw SocketException("No Internet");
//     // }
//     // return handler.next(options);
//     // },
//     //  onError: (DioException error, ErrorInterceptorHandler handler) async {
//     //   // ("INterceoptor error: $error");
//     //   if (error.response?.statusCode == 401) {
//     //     final refreskToken =
//     //         await SharedPref.getToken().then((value) => value.refreshToken);
//     //     if (refreskToken != '') {
//     //       await refreshToken();
//     //       return handler.resolve(await _retry(error.requestOptions));
//     //     }
//     //   }
//     //   return handler.reject(error);
//     //   // throw error;
//     // }
//     // ));
//   }

//   Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
//     final options =
//         Options(method: requestOptions.method, headers: requestOptions.headers);
//     // final accessToken = await _secureLocalStorage.readSecureData('token');
//     // var customHeaders = {'Authorization': "Bearer $accessToken"};
//     // options.headers?.addAll(customHeaders);
//     return _dio.request(requestOptions.path, options: options);
//   }

//   Future<Response> get(
//     String uri, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     print('in get function');
//     try {
//       print('in get => (1)');
//       var response = await _dio.get(
//         uri,
//         queryParameters: queryParameters,
//         options: options,
//         // cancelToken: cancelToken,
//         // onReceiveProgress: onReceiveProgress,
//       );
//       print('in get => (2)');
//       return response;
//       // }
//       //  on SocketException catch (e) {
//       //   throw e;
//       // } on FormatException catch (_) {
//       //   throw FormatException("Unable to process the data");
//     } catch (e) {
//       print('in get => (3)');
//       if (e is DioException) {
//         print("DioException: ${e.response}");
//         if (e.response == null ||
//             (e.response!.statusCode == 401 &&
//                 await SharedPref.getToken()
//                         .then((value) => value.accessToken) !=
//                     '')) {
//           await refreshToken();
//       print('in get => (4)');
//           final accessToken =
//               SharedPref.getToken().then((value) => value.accessToken);
//           return await Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl)).get(uri,
//               options: Options(headers: {
//                 'Authorization': accessToken,
//                 'content-Type': 'application/json'
//               }),
//               queryParameters: queryParameters);

//           //  return _dio.request(e.request.path, options: e.request.data);
//         }
//       }
//       print('in get => (5)');
//       rethrow;
//     }
//   }

//   Future<dynamic> post(
//     String uri, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.post(
//         uri,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       //add as interceoptor instead
//       // if(response.statusCode == 401 && _secureLocalStorage.readSecureData('refresh_token') != null){
//       //    await onRefreshToken();
//       // }
//       return response;
//     } on SocketException catch (e) {
//       print("Socket Exception: $e");
//       throw e;
//     } on FormatException catch (_) {
//       throw FormatException("Unable to process the data");
//     } catch (e) {
//       print("Error: $e");
//       throw e;
//     }
//   }

//   Future<dynamic> put(
//     String uri, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.put(
//         uri,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       //add as interceoptor instead
//       // if(response.statusCode == 401 && _secureLocalStorage.readSecureData('refresh_token') != null){
//       //    await onRefreshToken();
//       // }
//       return response;
//     } on SocketException catch (e) {
//       print("Socket Exception: $e");
//       throw e;
//     } on FormatException catch (_) {
//       throw FormatException("Unable to process the data");
//     } catch (e) {
//       print("Error: $e");
//       throw e;
//     }
//   }

//   Future<void> refreshToken() async {
//     print("refresh token called");
//     try {
//       final refreskToken =
//           await SharedPref.getToken().then((value) => value.refreshToken);
//       Response response = await Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl)).get(ApiEndPoints.refreshUrl,
//           options: Options(headers: {
//             'RefreshToken': refreskToken,
//             // 'content-Type': 'application/json'
//           }));
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print("Refresh response $response");
//         //save new token
//         await SharedPref.setAccessToken(accessToken: response.data.toString());
//         print('token saved');
//       } else {
//         await SharedPref.setToken(
//             tokenModel: TokenModel(accessToken: '', refreshToken: ''));
//       }
//       return;
//     } catch (e) {
//       print(e);
//       rethrow;
//     }
//   }
// }
