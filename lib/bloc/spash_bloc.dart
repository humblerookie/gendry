import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/splash_entities.dart';
import 'package:bitrise_client/services/user_service.dart';
import 'package:inject/inject.dart';

import 'base_bloc.dart';

class SplashBloc extends BaseBloc<SplashEvent, SplashData> {
  final UserService _service;

  @provide
  SplashBloc(this._service);

  @override
  SplashData get initialState => SplashData();

  @override
  Stream<SplashData> mapEventToState(SplashEvent event) async* {
    var isAuth=_service.isAuthenticated();
    var hasData = _service.hasUserData();

    var target = SplashTargets.LOGIN;
    if(isAuth && hasData){
      target = SplashTargets.HOME;
    } else if(isAuth){
      target = SplashTargets.ONBOARDING;
    }
    dispatchNavEvent(NextScreen(target));
  }
}
