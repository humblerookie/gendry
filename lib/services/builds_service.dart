import 'package:bitrise_client/api/builds_api.dart';
import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/api/entities/builds/build_log.dart';
import 'package:bitrise_client/api/entities/response.dart';
import 'package:bitrise_client/cache/preference_store.dart';
import 'package:built_collection/built_collection.dart';
import 'package:inject/inject.dart';

class BuildsService {
  final PreferenceStore _store;
  final BuildsApi _api;

  @provide
  @singleton
  BuildsService(this._store, this._api);

  Future<Response<BuiltList<AppBuild>>> getRecentBuilds(int filter) {
    return _api.getRecentBuilds(filter);
  }

  Future<Response<BuildLog>> getBuildLog(String appSlug, String buildSlug) {
    return _api.getBuildLog(appSlug,buildSlug);
  }
}
