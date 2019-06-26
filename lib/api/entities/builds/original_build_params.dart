library original_build_params;

import 'dart:convert';

import 'package:bitrise_client/data_model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'original_build_params.g.dart';

abstract class OriginalBuildParams
    implements Built<OriginalBuildParams, OriginalBuildParamsBuilder> {
  OriginalBuildParams._();

  factory OriginalBuildParams([updates(OriginalBuildParamsBuilder b)]) =
  _$OriginalBuildParams;

  @BuiltValueField(wireName: 'commit_hash')
  String get commitHash;
  @BuiltValueField(wireName: 'commit_message')
  String get commitMessage;
  @BuiltValueField(wireName: 'branch')
  String get branch;
  @BuiltValueField(wireName: 'branch_repo_owner')
  String get branchRepoOwner;
  @BuiltValueField(wireName: 'branch_dest')
  String get branchDest;
  @BuiltValueField(wireName: 'branch_dest_repo_owner')
  String get branchDestRepoOwner;
  @BuiltValueField(wireName: 'pull_request_id')
  int get pullRequestId;
  @BuiltValueField(wireName: 'pull_request_repository_url')
  String get pullRequestRepositoryUrl;
  @BuiltValueField(wireName: 'pull_request_merge_branch')
  String get pullRequestMergeBranch;
  @BuiltValueField(wireName: 'pull_request_head_branch')
  String get pullRequestHeadBranch;
  @BuiltValueField(wireName: 'pull_request_author')
  String get pullRequestAuthor;
  @BuiltValueField(wireName: 'diff_url')
  String get diffUrl;

  String toJson() {
    return json.encode(
        serializers.serializeWith(OriginalBuildParams.serializer, this));
  }

  static OriginalBuildParams fromJson(String jsonString) {
    return serializers.deserializeWith(
        OriginalBuildParams.serializer, json.decode(jsonString));
  }

  static Serializer<OriginalBuildParams> get serializer =>
      _$originalBuildParamsSerializer;
}