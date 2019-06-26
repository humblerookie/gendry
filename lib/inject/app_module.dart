import 'package:bitrise_client/api/user_api.dart';
import 'package:bitrise_client/cache/preference_store.dart';
import 'package:bitrise_client/services/user_service.dart';
import 'package:inject/inject.dart';

@module
class AppModule {
  @provide
  @singleton
  UserService provideAuthService(PreferenceStore store, UserApi api) =>
      UserService(store, api);
}
