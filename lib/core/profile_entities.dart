import 'dart:convert';

import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/parse/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_entities.g.dart';

abstract class ProfileData implements Built<ProfileData, ProfileDataBuilder> {
  ProfileData._();

  factory ProfileData([updates(ProfileDataBuilder b)]) => _$ProfileData((b) => b
    ..username = ""
    ..avatar=""
    ..email=""
    ..update(updates));

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'avatar_url')
  String get avatar;

  @BuiltValueField(wireName: 'state')
  LoadState get state;

  @nullable
  @BuiltValueField(wireName: 'errorMessage')
  String get errorMessage;

  String toJson() {
    return json.encode(serializers.serializeWith(ProfileData.serializer, this));
  }

  static ProfileData fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProfileData.serializer, json.decode(jsonString));
  }

  static Serializer<ProfileData> get serializer => _$profileDataSerializer;
}


//Events
abstract class OnboardingProfileEvent {}

class ActionSelected extends OnboardingProfileEvent {
  final bool isCorrectProfile;
  ActionSelected(this.isCorrectProfile);
}
class Retry extends OnboardingProfileEvent{}
class Init extends OnboardingProfileEvent{}

abstract class OnboardingProfileTargets{
  static const String LOGIN="login";
  static const String HOME="home";
}