library original_build_params;

import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'original_build_params.g.dart';

abstract class OriginalBuildParams
    implements Built<OriginalBuildParams, OriginalBuildParamsBuilder> {
  OriginalBuildParams._();

  factory OriginalBuildParams([updates(OriginalBuildParamsBuilder b)]) =
      _$OriginalBuildParams;

  @BuiltValueField(wireName: 'commit_hash')
  @nullable
  String get commitHash;

  @BuiltValueField(wireName: 'commit_message')
  @nullable
  String get commitMessage;

  @nullable
  @BuiltValueField(wireName: 'branch')
  String get branch;

  @nullable
  @BuiltValueField(wireName: 'branch_repo_owner')
  String get branchRepoOwner;

  @nullable
  @BuiltValueField(wireName: 'branch_dest')
  String get branchDest;

  @nullable
  @BuiltValueField(wireName: 'branch_dest_repo_owner')
  String get branchDestRepoOwner;

  @nullable
  @BuiltValueField(wireName: 'pull_request_id')
  int get pullRequestId;

  @nullable
  @BuiltValueField(wireName: 'pull_request_repository_url')
  String get pullRequestRepositoryUrl;

  @nullable
  @BuiltValueField(wireName: 'pull_request_merge_branch')
  String get pullRequestMergeBranch;

  @nullable
  @BuiltValueField(wireName: 'pull_request_head_branch')
  String get pullRequestHeadBranch;

  @nullable
  @BuiltValueField(wireName: 'pull_request_author')
  String get pullRequestAuthor;

  @nullable
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
