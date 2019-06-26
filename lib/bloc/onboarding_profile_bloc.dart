import 'package:bitrise_client/api/entities/user.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/error_handler.dart';
import 'package:bitrise_client/core/profile_entities.dart';
import 'package:bitrise_client/services/user_service.dart';
import 'package:inject/inject.dart';

import 'base_bloc.dart';

class OnboardingProfileBloc
    extends BaseBloc<OnboardingProfileEvent, ProfileData> {
  final UserService _service;
  final ErrorHandler _errorHandler;

  ProfileData _viewState = (ProfileDataBuilder()
        ..state = LoadState.LOADING
        ..username = ""
        ..email = ""
        ..avatar = "")
      .build();

  User _user;

  @provide
  OnboardingProfileBloc(this._service, this._errorHandler){
     mapEventToState(Init());
  }

  @override
  ProfileData get initialState => _viewState;

  @override
  Stream<ProfileData> mapEventToState(OnboardingProfileEvent event) async* {
    switch (event.runtimeType) {
      case Init:
      case Retry:
        _viewState = _viewState.rebuild((b) => b..state = LoadState.LOADING);
        yield _viewState;
        _viewState = await getUserDetails();
        break;
      case ActionSelected:
        var data = event as ActionSelected;
        if (data.isCorrectProfile) {
          _service.saveUser(_user);
          dispatchNavEvent(NextScreen(OnboardingProfileTargets.HOME));
        } else {
          _service.saveToken(null);
          dispatchNavEvent(NextScreen(OnboardingProfileTargets.LOGIN));
        }
    }
    yield _viewState;
  }

  Future<ProfileData> getUserDetails() async {
    var user = await _service.getUserDetails();
    if (user.error == null) {
      this._user = user.data;
      var d = user.data;
      return _viewState.rebuild((b) => b
        ..state = LoadState.DATA
        ..email = d.email == null ? d.unconfirmedEmail : d.email
        ..username = d.username
        ..avatar = d.avatarUrl);
    } else {
      return _viewState = _viewState.rebuild((b) => b
        ..state = LoadState.ERROR
        ..errorMessage = _errorHandler.getErrorMessage(user.error));
    }
  }
}
