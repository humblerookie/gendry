import 'package:bitrise_client/bloc/login_bloc.dart';
import 'package:bitrise_client/bloc/spash_bloc.dart';
import 'package:bitrise_client/services/user_service.dart';
import 'package:inject/inject.dart';

@module
class MiscModule {
  @provide
  LoginBloc provideLoginBloc(UserService userService) => LoginBloc(userService);

  @provide
  SplashBloc provideSplashBloc(UserService userService) => SplashBloc(userService);


}
