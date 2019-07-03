library app_build;

import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'code_repository.dart';
import 'original_build_params.dart';

part 'app_build.g.dart';

abstract class AppBuild implements Built<AppBuild, AppBuildBuilder> {
  AppBuild._();

  factory AppBuild([updates(AppBuildBuilder b)]) = _$AppBuild;

  @nullable
  @BuiltValueField(wireName: 'triggered_at')
  String get triggeredAt;

  @nullable
  @BuiltValueField(wireName: 'started_on_worker_at')
  String get startedOnWorkerAt;

  @nullable
  @BuiltValueField(wireName: 'environment_prepare_finished_at')
  String get environmentPrepareFinishedAt;

  @nullable
  @BuiltValueField(wireName: 'finished_at')
  String get finishedAt;

  @nullable
  @BuiltValueField(wireName: 'slug')
  String get slug;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  @nullable
  @BuiltValueField(wireName: 'status_text')
  String get statusText;

  @nullable
  @BuiltValueField(wireName: 'abort_reason')
  String get abortReason;

  @nullable
  @BuiltValueField(wireName: 'is_on_hold')
  bool get isOnHold;

  @nullable
  @BuiltValueField(wireName: 'branch')
  String get branch;

  @nullable
  @BuiltValueField(wireName: 'build_number')
  int get buildNumber;

  @nullable
  @BuiltValueField(wireName: 'commit_hash')
  String get commitHash;

  @nullable
  @BuiltValueField(wireName: 'commit_message')
  String get commitMessage;

  @nullable
  @BuiltValueField(wireName: 'tag')
  String get tag;

  @nullable
  @BuiltValueField(wireName: 'triggered_workflow')
  String get triggeredWorkflow;

  @nullable
  @BuiltValueField(wireName: 'triggered_by')
  String get triggeredBy;

  @nullable
  @BuiltValueField(wireName: 'stack_config_type')
  String get stackConfigType;

  @nullable
  @BuiltValueField(wireName: 'stack_identifier')
  String get stackIdentifier;

  @nullable
  @BuiltValueField(wireName: 'original_build_params')
  OriginalBuildParams get originalBuildParams;

  @nullable
  @BuiltValueField(wireName: 'pull_request_id')
  int get pullRequestId;

  @nullable
  @BuiltValueField(wireName: 'pull_request_target_branch')
  String get pullRequestTargetBranch;

  @nullable
  @BuiltValueField(wireName: 'pull_request_view_url')
  String get pullRequestViewUrl;

  @nullable
  @BuiltValueField(wireName: 'commit_view_url')
  String get commitViewUrl;

  @nullable
  @BuiltValueField(wireName: 'repository')
  CodeRepository get repository;

  String toJson() {
    return json.encode(serializers.serializeWith(AppBuild.serializer, this));
  }

  static AppBuild fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppBuild.serializer, json.decode(jsonString));
  }

  static Serializer<AppBuild> get serializer => _$appBuildSerializer;
}
