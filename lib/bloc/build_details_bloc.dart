import 'package:bitrise_client/api/entities/builds/build_log.dart';
import 'package:bitrise_client/api/entities/response.dart';
import 'package:bitrise_client/core/build_detail_entities.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/error_handler.dart';
import 'package:bitrise_client/services/builds_service.dart';
import 'package:inject/inject.dart';

import 'base_bloc.dart';

class BuildDetailsBloc extends BaseBloc<BuildDetailsEvent, BuildDetailsData> {
  final BuildsService _service;
  final ErrorHandler _errorHandler;

  BuildDetailsData _viewState =
      (BuildDetailsDataBuilder()..state = LoadState.EMPTY).build();

  @provide
  BuildDetailsBloc(this._service, this._errorHandler);

  @override
  BuildDetailsData get initialState => _viewState;

  @override
  Stream<BuildDetailsData> mapEventToState(BuildDetailsEvent event) async* {
    switch (event.runtimeType) {
      case InitEvent:
        var e = event as InitEvent;
        _viewState = _viewState.rebuild((updates) => updates
          ..state = LoadState.LOADING
          ..data = e.build.toBuilder());
        yield _viewState;
        var logData =
            await _service.getBuildLog(e.build.repository.slug, e.build.slug);
        _viewState = getViewStateForLog(logData);
        break;

      case RetryEvent:
        _viewState =
            _viewState.rebuild((updates) => updates..state = LoadState.LOADING);
        yield _viewState;
        var logData = await _service.getBuildLog(
            _viewState.data.repository.slug, _viewState.data.slug);
        _viewState = getViewStateForLog(logData);
        break;
    }

    yield _viewState;
  }

  BuildDetailsData getViewStateForLog(Response<BuildLog> logData) {
    if (logData.error != null) {
      return _viewState.rebuild((updates) => updates
        ..state = LoadState.ERROR
        ..errorMessage = _errorHandler.getErrorMessage(logData.error));
    } else {
      return _viewState.rebuild((updates) => updates
        ..state = LoadState.DATA
        ..log = logData.data.toBuilder());
    }
  }
}
