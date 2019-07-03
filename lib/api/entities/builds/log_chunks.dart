library log_chunks;

import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_chunks.g.dart';

abstract class LogChunks implements Built<LogChunks, LogChunksBuilder> {
  LogChunks._();

  factory LogChunks([updates(LogChunksBuilder b)]) = _$LogChunks;

  @BuiltValueField(wireName: 'chunk')
  String get chunk;

  @BuiltValueField(wireName: 'position')
  int get position;

  String toJson() {
    return json.encode(serializers.serializeWith(LogChunks.serializer, this));
  }

  static LogChunks fromJson(String jsonString) {
    return serializers.deserializeWith(
        LogChunks.serializer, json.decode(jsonString));
  }

  static Serializer<LogChunks> get serializer => _$logChunksSerializer;
}
