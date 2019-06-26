// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginData extends LoginData {
  @override
  final LoadState state;

  factory _$LoginData([void Function(LoginDataBuilder) updates]) =>
      (new LoginDataBuilder()..update(updates)).build();

  _$LoginData._({this.state}) : super._() {
    if (state == null) {
      throw new BuiltValueNullFieldError('LoginData', 'state');
    }
  }

  @override
  LoginData rebuild(void Function(LoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginDataBuilder toBuilder() => new LoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginData && state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc(0, state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginData')..add('state', state))
        .toString();
  }
}

class LoginDataBuilder implements Builder<LoginData, LoginDataBuilder> {
  _$LoginData _$v;

  LoadState _state;
  LoadState get state => _$this._state;
  set state(LoadState state) => _$this._state = state;

  LoginDataBuilder();

  LoginDataBuilder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginData;
  }

  @override
  void update(void Function(LoginDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginData build() {
    final _$result = _$v ?? new _$LoginData._(state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
