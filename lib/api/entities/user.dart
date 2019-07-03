library user_response;

import 'dart:convert';

import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class UserResponse
    implements Built<UserResponse, UserResponseBuilder> {
  UserResponse._();

  factory UserResponse([updates(UserResponseBuilder b)]) = _$UserResponse;

  @BuiltValueField(wireName: 'data')
  User get user;

  String toJson() {
    return json
        .encode(serializers.serializeWith(UserResponse.serializer, this));
  }

  static UserResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserResponse.serializer, json.decode(jsonString));
  }

  static Serializer<UserResponse> get serializer => _$userResponseSerializer;
}

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  @nullable
  @BuiltValueField(wireName: 'avatar_url')
  String get avatarUrl;

  @BuiltValueField(wireName: 'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: 'slug')
  String get slug;

  @nullable
  @BuiltValueField(wireName: 'unconfirmed_email')
  String get unconfirmedEmail;

  @nullable
  @BuiltValueField(wireName: 'username')
  String get username;

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}
