import 'package:dio/dio.dart';

class NetUtil{
  // ignore: missing_return
  Future<Response> getHttp(string, params) async {
    try {
      Response response = await Dio().get(string, queryParameters: params);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
