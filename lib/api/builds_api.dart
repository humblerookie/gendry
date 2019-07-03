import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/api/entities/builds/build_log.dart';
import 'package:bitrise_client/api/entities/builds/builds_response.dart';
import 'package:bitrise_client/api/json_decoder.dart';
import 'package:bitrise_client/inject/network_module.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:inject/inject.dart';

import 'entities/response.dart' as res;

class BuildsApi {
  static const int LIMIT = 50;
  final Dio _dio;

  @provide
  @singleton
  BuildsApi(this._dio);

  Future<res.Response<BuiltList<AppBuild>>> getRecentBuilds(int filter) async {
    try {
      Response<String> response = await _dio.get(_getRecentBuildsUrl(filter));
      var buildsResponse = await decodeJson<BuildsResponse>(response.data);
      return res.Response<BuiltList<AppBuild>>(buildsResponse.appBuild, null);
    } catch (error, stacktrace) {
      print(stacktrace);
      return res.Response<BuiltList<AppBuild>>(null, error);
    }
  }

  _getRecentBuildsUrl(int filter) {
    var filterString = filter < 0 ? "" : "&status=$filter";
    return "/builds?limit=$LIMIT$filterString";
  }

  Future<res.Response<BuildLog>> getBuildLog(
      String appSlug, String buildSlug) async {
    try {
      Response<String> response =
          await _dio.get("/apps/$appSlug/builds/$buildSlug/log");
      var buildsResponse = await decodeJson<BuildLog>(response.data);
      var headers = Map<String, String>();
      headers[IGNORE_AUTH] = true.toString();
      var options = RequestOptions(headers: headers);
      response =
          await _dio.get(buildsResponse.expiringRawLogUrl, options: options);
      return res.Response<BuildLog>(
          buildsResponse.rebuild((updates) => updates..log = response.data),
          null);
    } catch (error, stacktrace) {
      print(stacktrace);
      return res.Response<BuildLog>(null, error);
    }
  }
}
