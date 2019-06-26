import 'package:bitrise_client/cache/preference_store.dart';
import 'package:bitrise_client/core/error_handler.dart';
import 'package:bitrise_client/inject/app_component.inject.dart';
import 'package:inject/inject.dart';

import 'app_module.dart';
import 'bloc_component.dart';
import 'login_module.dart';
import 'network_module.dart';

@Injector(const [NetworkModule, AppModule, MiscModule])
abstract class AppComponent extends BlocComponent {
  static final make = AppComponent$Injector.create;

  @provide
  ErrorHandler errorHandler();

  @provide
  PreferenceStore store();
}
