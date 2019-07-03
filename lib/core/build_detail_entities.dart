import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/api/entities/builds/build_log.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:built_value/built_value.dart';

part 'build_detail_entities.g.dart';

abstract class BuildDetailsData
    implements Built<BuildDetailsData, BuildDetailsDataBuilder> {
  BuildDetailsData._();

  factory BuildDetailsData([updates(BuildDetailsDataBuilder b)]) =>
      _$BuildDetailsData((b) => b
        ..state = LoadState.DATA
        ..update(updates));

  @BuiltValueField(wireName: 'state')
  LoadState get state;

  @BuiltValueField(wireName: 'data')
  @nullable
  AppBuild get data;

  @BuiltValueField(wireName: 'log')
  @nullable
  BuildLog get log;

  @BuiltValueField(wireName: 'error')
  @nullable
  String get errorMessage;
}

abstract class BuildDetailsEvent {}

class InitEvent extends BuildDetailsEvent {
  final AppBuild build;

  InitEvent(this.build);
}

class RetryEvent extends BuildDetailsEvent {}

abstract class BuildDetailsTarget {
  static const String ONBOARDING = "onboarding";
}
