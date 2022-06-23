import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class ApiHandller {
  static Future<dynamic> fetchGet({required url}) async {
    try {
      Dio dio = new Dio();
      dio.options.followRedirects = false;
      dio.options.responseType = ResponseType.plain;
      Response response = await dio.get(url);
      return response;
    } on DioError catch (e) {
      print(e.stackTrace);
      return e.response;
    }
  }
}
