library builds_response;

import 'dart:convert';

import 'package:bitrise_client/api/entities/paging.dart';
import 'package:bitrise_client/data_model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'app_build.dart';

part 'builds_response.g.dart';

abstract class BuildsResponse
    implements Built<BuildsResponse, BuildsResponseBuilder> {
  BuildsResponse._();

  factory BuildsResponse([updates(BuildsResponseBuilder b)]) = _$BuildsResponse;

  @BuiltValueField(wireName: 'data')
  BuiltList<AppBuild> get appBuild;
  @BuiltValueField(wireName: 'paging')
  Paging get paging;
  String toJson() {
    return json
        .encode(serializers.serializeWith(BuildsResponse.serializer, this));
  }

  static BuildsResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuildsResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BuildsResponse> get serializer =>
      _$buildsResponseSerializer;
}

