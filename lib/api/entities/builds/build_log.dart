library build_log;

import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'log_chunks.dart';

part 'build_log.g.dart';

abstract class BuildLog implements Built<BuildLog, BuildLogBuilder> {
  BuildLog._();

  factory BuildLog([updates(BuildLogBuilder b)]) = _$BuildLog;

  @BuiltValueField(wireName: 'expiring_raw_log_url')
  String get expiringRawLogUrl;

  @BuiltValueField(wireName: 'log_chunks')
  BuiltList<LogChunks> get logChunks;

  @BuiltValueField(wireName: 'log')
  @nullable
  String get log;

  String toJson() {
    return json.encode(serializers.serializeWith(BuildLog.serializer, this));
  }

  static BuildLog fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuildLog.serializer, json.decode(jsonString));
  }

  static Serializer<BuildLog> get serializer => _$buildLogSerializer;
}
