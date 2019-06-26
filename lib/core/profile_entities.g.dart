// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfileData> _$profileDataSerializer = new _$ProfileDataSerializer();

class _$ProfileDataSerializer implements StructuredSerializer<ProfileData> {
  @override
  final Iterable<Type> types = const [ProfileData, _$ProfileData];
  @override
  final String wireName = 'ProfileData';

  @override
  Iterable serialize(Serializers serializers, ProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'avatar_url',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(LoadState)),
    ];
    if (object.errorMessage != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(object.errorMessage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProfileData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(LoadState)) as LoadState;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileData extends ProfileData {
  @override
  final String username;
  @override
  final String email;
  @override
  final String avatar;
  @override
  final LoadState state;
  @override
  final String errorMessage;

  factory _$ProfileData([void Function(ProfileDataBuilder) updates]) =>
      (new ProfileDataBuilder()..update(updates)).build();

  _$ProfileData._(
      {this.username, this.email, this.avatar, this.state, this.errorMessage})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('ProfileData', 'username');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('ProfileData', 'email');
    }
    if (avatar == null) {
      throw new BuiltValueNullFieldError('ProfileData', 'avatar');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('ProfileData', 'state');
    }
  }

  @override
  ProfileData rebuild(void Function(ProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileDataBuilder toBuilder() => new ProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileData &&
        username == other.username &&
        email == other.email &&
        avatar == other.avatar &&
        state == other.state &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, username.hashCode), email.hashCode),
                avatar.hashCode),
            state.hashCode),
        errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileData')
          ..add('username', username)
          ..add('email', email)
          ..add('avatar', avatar)
          ..add('state', state)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ProfileDataBuilder implements Builder<ProfileData, ProfileDataBuilder> {
  _$ProfileData _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _avatar;
  String get avatar => _$this._avatar;
  set avatar(String avatar) => _$this._avatar = avatar;

  LoadState _state;
  LoadState get state => _$this._state;
  set state(LoadState state) => _$this._state = state;

  String _errorMessage;
  String get errorMessage => _$this._errorMessage;
  set errorMessage(String errorMessage) => _$this._errorMessage = errorMessage;

  ProfileDataBuilder();

  ProfileDataBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _email = _$v.email;
      _avatar = _$v.avatar;
      _state = _$v.state;
      _errorMessage = _$v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProfileData;
  }

  @override
  void update(void Function(ProfileDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileData build() {
    final _$result = _$v ??
        new _$ProfileData._(
            username: username,
            email: email,
            avatar: avatar,
            state: state,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
