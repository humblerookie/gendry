import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/services/user_service.dart';
import 'package:inject/inject.dart';

import 'package:bitrise_client/core/login_entities.dart';

import 'base_bloc.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginData> {

  final UserService _service;

  LoginData _viewState = (LoginDataBuilder()..state = LoadState.DATA).build();

  @provide
  LoginBloc(this._service);

  @override
  LoginData get initialState => _viewState;

  @override
  Stream<LoginData> mapEventToState(LoginEvent event) async* {
    switch (event.runtimeType) {
      case SaveToken:
        _viewState =  _viewState.rebuild((b)=>b..state =LoadState.LOADING);
        yield _viewState;
        _service.saveToken((event as SaveToken).token);
        dispatchNavEvent(NextScreen(LoginTarget.ONBOARDING));
        break;
    }
  }
}





