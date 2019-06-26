import 'package:bitrise_client/inject/app_component.dart';
import 'package:bitrise_client/inject/app_module.dart';
import 'package:bitrise_client/inject/login_module.dart';
import 'package:bitrise_client/inject/network_module.dart';

class AppInjector {
  static AppComponent appComponent;

  static Future<Null> init() async {
    appComponent =
    await AppComponent.make(NetworkModule(), AppModule(), MiscModule());
    await appComponent.store().init();
  }
}
