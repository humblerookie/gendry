library paging;

import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paging.g.dart';

abstract class Paging implements Built<Paging, PagingBuilder> {
  Paging._();

  factory Paging([updates(PagingBuilder b)]) = _$Paging;

  @BuiltValueField(wireName: 'total_item_count')
  int get totalItemCount;

  @BuiltValueField(wireName: 'page_item_limit')
  int get pageItemLimit;

  @BuiltValueField(wireName: 'next')
  String get next;

  String toJson() {
    return json.encode(serializers.serializeWith(Paging.serializer, this));
  }

  static Paging fromJson(String jsonString) {
    return serializers.deserializeWith(
        Paging.serializer, json.decode(jsonString));
  }

  static Serializer<Paging> get serializer => _$pagingSerializer;
}
