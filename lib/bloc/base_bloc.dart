import 'package:bitrise_client/core/common_states.dart';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  final PublishSubject<NavEvent> _stream = PublishSubject();

  Stream<NavEvent> navEvents;

  BaseBloc() {
    this.navEvents = _stream;
  }

  void dispatchNavEvent(NavEvent target) {
    _stream.sink.add(target);
  }

  @override
  void dispose() {
    _stream.close();
    super.dispose();
  }
}
