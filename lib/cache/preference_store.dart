import 'package:bitrise_client/api/entities/user.dart';
import 'package:inject/inject.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceStore {
  static const String _KEY_AUTH = "auth_token";
  static const String _KEY_USER = "user";

  SharedPreferences _instance;

  @provide
  @singleton
  PreferenceStore();

  Future<bool> saveToken(String cred) async {
    return _instance.setString(_KEY_AUTH, cred);
  }

  String getToken() {
    return _instance.getString(_KEY_AUTH);
  }

  Future<bool> saveUser(User user) async {
    return _instance.setString(_KEY_USER, user.toJson());
  }

  User getUser() {
    var string = _instance.getString(_KEY_USER);
    if (string == null)
      return null;
    else
      return User.fromJson(string);
  }

  Future<Null> init() async {
    if (_instance == null) {
      _instance = await SharedPreferences.getInstance();
    }
  }
}
