import 'package:bitrise_client/api/json_decoder.dart';
import 'package:dio/dio.dart';
import 'package:inject/inject.dart';

import 'entities/response.dart' as res;
import 'entities/user.dart';

class UserApi {
  final Dio _dio;

  @provide
  @singleton
  UserApi(this._dio);

  Future<res.Response<User>> getUser() async {
    try {
      Response<String> response = await _dio.get("/me");
      var userResponse = await decodeJson<UserResponse>(response.data);
      return res.Response<User>(userResponse.user, null);
    } catch (error, stacktrace) {
      print(stacktrace);
      return res.Response<User>(null, error);
    }
  }
}
