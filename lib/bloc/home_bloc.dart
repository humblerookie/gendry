import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/api/entities/response.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/error_handler.dart';
import 'package:bitrise_client/core/home_entities.dart';
import 'package:bitrise_client/services/builds_service.dart';
import 'package:built_collection/src/list.dart';
import 'package:inject/inject.dart';

import 'base_bloc.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeData> {
  final BuildsService _service;
  final ErrorHandler _errorHandler;

  HomeData _viewState = (HomeDataBuilder()
        ..state = LoadState.LOADING
        ..filter = -1)
      .build();

  @provide
  HomeBloc(this._service, this._errorHandler);

  @override
  HomeData get initialState => _viewState;

  @override
  Stream<HomeData> mapEventToState(HomeEvent event) async* {
    switch (event.runtimeType) {
      case InitEvent:
      case RetryEvent:
        _viewState =
            _viewState.rebuild((updates) => updates..state = LoadState.LOADING);
        yield _viewState;
        var builds = await _service.getRecentBuilds(_viewState.filter);
        _viewState = getStateForResponse(builds);
        yield _viewState;
        break;
      case FilterEvent:
        var filterEvent = event as FilterEvent;
        _viewState =
            _viewState.rebuild((updates) => updates..state = LoadState.LOADING);
        yield _viewState;
        var builds = await _service.getRecentBuilds(filterEvent.filter);
        _viewState = getStateForResponse(builds, filterEvent);
        yield _viewState;
        break;
      case  ItemSelectedEvent:
        var e = event as ItemSelectedEvent;
        dispatchNavEvent(NextScreen(HomeTarget.BUILD_DETAILS,data: _viewState.appBuilds[e.index]));
    }

  }

  HomeData getStateForResponse(Response<BuiltList<AppBuild>> builds,
      [FilterEvent filterEvent]) {
    if (builds.error != null) {
      return _viewState.rebuild((updates) => updates
        ..state = LoadState.ERROR
        ..errorMessage = _errorHandler.getErrorMessage(builds.error)
        ..filter = filterEvent != null ? filterEvent.filter : updates.filter);
    } else if (builds.data == null || builds.data.isEmpty) {
      return _viewState.rebuild((updates) => updates
        ..state = LoadState.EMPTY
        ..filter = filterEvent != null ? filterEvent.filter : updates.filter);
    } else {
      return _viewState.rebuild((updates) => updates
        ..state = LoadState.DATA
        ..appBuilds = builds.data.toList()
        ..filter = filterEvent != null ? filterEvent.filter : updates.filter);
    }
  }
}
