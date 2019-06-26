import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class UnicastSubject<T> extends Subject<T> {
  var _observersCount = 0;
  final int MIN_OBSERVERS = 1;

  final _bufferedEvents = List<T>();

  UnicastSubject._(StreamController<T> controller, Observable<T> observable)
      : super(controller, observable) {

    doOnListen(() {
      ++_observersCount;
      if (_observersCount>= MIN_OBSERVERS && _bufferedEvents.length>0) {
        _bufferedEvents.forEach((t) {
          sink.add(t);
        });
        _bufferedEvents.clear();
      }
    });
    doOnDone((){
      --_observersCount;
    });
  }

  void send(T t) {
    if (_observersCount >=MIN_OBSERVERS) {
      sink.add(t);
    } else {
      _bufferedEvents.add(t);
    }
  }

  factory UnicastSubject(
      {void onListen(), void onCancel(), bool sync = false}) {
    // ignore: close_sinks
    final controller = StreamController<T>.broadcast(
      onListen: onListen,
      onCancel: onCancel,
      sync: sync,
    );

    return UnicastSubject<T>._(
      controller,
      Observable<T>(controller.stream),
    );
  }
}
