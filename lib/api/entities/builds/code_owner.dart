library code_owner;

import 'dart:convert';

import 'package:bitrise_client/data_model/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'code_owner.g.dart';

abstract class CodeOwner implements Built<CodeOwner, CodeOwnerBuilder> {
  CodeOwner._();

  factory CodeOwner([updates(CodeOwnerBuilder b)]) = _$CodeOwner;

  @BuiltValueField(wireName: 'account_type')
  String get accountType;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'slug')
  String get slug;

  String toJson() {
    return json.encode(serializers.serializeWith(CodeOwner.serializer, this));
  }

  static CodeOwner fromJson(String jsonString) {
    return serializers.deserializeWith(
        CodeOwner.serializer, json.decode(jsonString));
  }

  static Serializer<CodeOwner> get serializer => _$codeOwnerSerializer;
}
