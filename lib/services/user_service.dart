import 'package:bitrise_client/api/entities/response.dart';
import 'package:bitrise_client/api/entities/user.dart';
import 'package:bitrise_client/api/user_api.dart';
import 'package:bitrise_client/cache/preference_store.dart';
import 'package:inject/inject.dart';

class UserService {
  final PreferenceStore _store;
  final UserApi _userApi;

  @provide
  @singleton
  UserService(this._store, this._userApi);

  Future<Response<User>> getUserDetails() {
    return _userApi.getUser();
  }

  void saveToken(String token) {
    _store.saveToken(token);
  }

  void saveUser(User user) {
    _store.saveUser(user);
  }

  bool isAuthenticated() {
    return _store.getToken() != null;
  }

  bool hasUserData() {
    return _store.getUser() != null;
  }
}
