import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DioService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();
    dio.options.headers['content-type'] = 'application/json';
    return await dio
        .get(url,
            options: Options(method: 'GET', responseType: ResponseType.json))
        .then((response) {
      log(response.toString());
      return response;
    });
  }
}
