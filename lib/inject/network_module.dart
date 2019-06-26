import 'dart:core';

import 'package:bitrise_client/cache/preference_store.dart';
import 'package:dio/dio.dart';
import 'package:inject/inject.dart';

const apiUrl = const Qualifier(#apiUrl);

@module
class NetworkModule {
  @provide
  @singleton
  Dio provideClient(BaseOptions options, PreferenceStore store) {
    var dio = Dio(options);
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      var credentials = store.getToken();
      if (credentials != null) {
        options.headers['Authorization'] = credentials;
      }
      return options; //continue
    }));
    return dio;
  }

  @provide
  BaseOptions provideConfig(@apiUrl String baseUrl) {
    return new BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 50000,
      receiveTimeout: 30000,
    );
  }

  @provide
  @apiUrl
  String provideApiUrl() => "https://api.bitrise.io/v0.1";
}
