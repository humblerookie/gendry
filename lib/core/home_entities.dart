import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:built_value/built_value.dart';

part 'home_entities.g.dart';

abstract class HomeData implements Built<HomeData, HomeDataBuilder> {
  HomeData._();

  factory HomeData([updates(HomeDataBuilder b)]) => _$HomeData((b) => b
    ..state = LoadState.DATA
    ..update(updates));

  @BuiltValueField(wireName: 'state')
  LoadState get state;

  @BuiltValueField(wireName: 'filter')
  int get filter;

  @BuiltValueField(wireName: 'builds')
  @nullable
  List<AppBuild> get appBuilds;

  @BuiltValueField(wireName: 'errorMessage')
  @nullable
  String get errorMessage;
}

abstract class HomeEvent {}

class InitEvent extends HomeEvent {}

class FilterEvent extends HomeEvent {
  final int filter;
  FilterEvent(this.filter);
}

class RetryEvent extends HomeEvent {}
class ItemSelectedEvent extends HomeEvent {
  final int index;

  ItemSelectedEvent(this.index);
}

abstract class HomeTarget {
  static const String BUILD_DETAILS = "build_details";
}
