import 'package:dio/dio.dart';

import '../shared_preferences/cashe_helper.dart';


class DioUtils {

  static DioUtils? _instance;
  static Dio? _dio;


  static DioUtils? getInstance() {
    if (_instance == null) {
      _dio = Dio(_getOptions());
    }
    return _instance;
  }

  static Dio? get dio => _dio;

  static void setDioAgain() {
    _dio = Dio(_getOptions());
  }

  static BaseOptions _getOptions() {
    BaseOptions options = BaseOptions(
      followRedirects: false,
      validateStatus: (status) => status! <= 500,
    );
    options.connectTimeout = Duration(seconds: 10); //10 sec
    options.receiveTimeout =Duration(seconds: 20); //20 sec
    options.baseUrl = "http://testapi.alifouad91.com/api/";
    options.headers = {
      "Content-Type" : "application/json",
      'Accept': 'application/json',
      'Authorization': "Bearer ${CacheHelper.getData(key: "token") == null ? "" : CacheHelper.getData(key: "token")}",
    };
    options.queryParameters = {


    };

    return options;
  }

  //this just returns the language key
  // static String handleDioError(DioError dioError) {
  //   String errorDescription = "";
  //   switch (dioError.type) {
  //     case DioErrorType.cancel:
  //       errorDescription = "request_cancelled";
  //       break;
  //     case DioErrorType.connectTimeout:
  //     //Connection timeout with API server
  //       errorDescription = "timeout";
  //       break;
  //     case DioErrorType.other:
  //       errorDescription = "checkout_internet";
  //       break;
  //     case DioErrorType.receiveTimeout:
  //       errorDescription = "timeout";
  //       break;
  //     case DioErrorType.response:
  //       print("Received invalid status code: ${dioError.response!.statusCode}");
  //       errorDescription = "unknown_error";
  //       break;
  //     case DioErrorType.sendTimeout:
  //       errorDescription = "timeout";
  //       break;
  //   }
  //   return errorDescription;
  // }

  // static Future<Either<String, dynamic>> doNetworkRequest(
  //     Future<dynamic> request,
  //     ) async {
  //   try {
  //     final result = await request;
  //     return Right(result);
  //   } on DioError catch (e) {
  //     return Left(DioUtilNew.handleDioError(e));
  //   }
  // }
}