enum LoadState { EMPTY, LOADING, DATA, ERROR }

abstract class NavEvent {}

class NavNone extends NavEvent {}

class NextScreen extends NavEvent {
  final String target;
  Object data;

  NextScreen(this.target, {this.data});
}
