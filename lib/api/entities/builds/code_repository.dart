library code_repository;

import 'dart:convert';

import 'package:bitrise_client/data_model/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'code_owner.dart';

part 'code_repository.g.dart';

abstract class CodeRepository
    implements Built<CodeRepository, CodeRepositoryBuilder> {
  CodeRepository._();

  factory CodeRepository([updates(CodeRepositoryBuilder b)]) = _$CodeRepository;

  @BuiltValueField(wireName: 'slug')
  String get slug;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'project_type')
  String get projectType;

  @BuiltValueField(wireName: 'provider')
  String get provider;

  @BuiltValueField(wireName: 'repo_owner')
  String get repoOwner;

  @BuiltValueField(wireName: 'repo_url')
  String get repoUrl;

  @BuiltValueField(wireName: 'repo_slug')
  String get repoSlug;

  @BuiltValueField(wireName: 'is_disabled')
  bool get isDisabled;

  @BuiltValueField(wireName: 'status')
  int get status;

  @BuiltValueField(wireName: 'is_public')
  bool get isPublic;

  @BuiltValueField(wireName: 'owner')
  CodeOwner get owner;

  @BuiltValueField(wireName: 'avatar_url')
  String get avatarUrl;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CodeRepository.serializer, this));
  }

  static CodeRepository fromJson(String jsonString) {
    return serializers.deserializeWith(
        CodeRepository.serializer, json.decode(jsonString));
  }

  static Serializer<CodeRepository> get serializer =>
      _$codeRepositorySerializer;

}
