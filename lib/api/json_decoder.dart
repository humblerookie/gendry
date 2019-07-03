import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:flutter/foundation.dart';

Future<T> decodeJson<T>(String res) async {
  var list = List();
  list.add(res);
  list.add(T);
  var result = await compute(_decode, list);
  return result;
}

dynamic _decode(List list) {
  var decoded = json.decode(list[0]);
  var matchedDecoder = serializers.serializerForType(list[1]);
  if (matchedDecoder != null) {
    return serializers.deserializeWith(matchedDecoder, decoded);
  } else {
    return null;
  }
}
