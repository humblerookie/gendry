library app_build;

import 'dart:convert';

import 'package:bitrise_client/data_model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'code_repository.dart';
import 'original_build_params.dart';

part 'app_build.g.dart';

abstract class AppBuild implements Built<AppBuild, AppBuildBuilder> {
  AppBuild._();

  factory AppBuild([updates(AppBuildBuilder b)]) = _$AppBuild;

  @BuiltValueField(wireName: 'triggered_at')
  String get triggeredAt;
  @BuiltValueField(wireName: 'started_on_worker_at')
  String get startedOnWorkerAt;
  @BuiltValueField(wireName: 'environment_prepare_finished_at')
  String get environmentPrepareFinishedAt;
  @BuiltValueField(wireName: 'finished_at')
  String get finishedAt;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'status')
  int get status;
  @BuiltValueField(wireName: 'status_text')
  String get statusText;
  @BuiltValueField(wireName: 'abort_reason')
  String get abortReason;
  @BuiltValueField(wireName: 'is_on_hold')
  bool get isOnHold;
  @BuiltValueField(wireName: 'branch')
  String get branch;
  @BuiltValueField(wireName: 'build_number')
  int get buildNumber;
  @BuiltValueField(wireName: 'commit_hash')
  String get commitHash;
  @BuiltValueField(wireName: 'commit_message')
  String get commitMessage;
  @BuiltValueField(wireName: 'tag')
  String get tag;
  @BuiltValueField(wireName: 'triggered_workflow')
  String get triggeredWorkflow;
  @BuiltValueField(wireName: 'triggered_by')
  String get triggeredBy;
  @BuiltValueField(wireName: 'stack_config_type')
  String get stackConfigType;
  @BuiltValueField(wireName: 'stack_identifier')
  String get stackIdentifier;
  @BuiltValueField(wireName: 'original_build_params')
  OriginalBuildParams get originalBuildParams;
  @BuiltValueField(wireName: 'pull_request_id')
  int get pullRequestId;
  @BuiltValueField(wireName: 'pull_request_target_branch')
  String get pullRequestTargetBranch;
  @BuiltValueField(wireName: 'pull_request_view_url')
  String get pullRequestViewUrl;
  @BuiltValueField(wireName: 'commit_view_url')
  String get commitViewUrl;
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