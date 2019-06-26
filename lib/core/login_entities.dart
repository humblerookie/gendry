import 'package:bitrise_client/core/common_states.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_entities.g.dart';

abstract class LoginData implements Built<LoginData, LoginDataBuilder> {
  LoginData._();

  factory LoginData([updates(LoginDataBuilder b)]) => _$LoginData((b) => b
    ..state = LoadState.DATA
    ..update(updates));

  @BuiltValueField(wireName: 'state')
  LoadState get state;
}

abstract class LoginEvent {}

class SaveToken extends LoginEvent {
  final String token;

  SaveToken(this.token);
}

abstract class LoginTarget {
  static const String ONBOARDING = "onboarding";
}
