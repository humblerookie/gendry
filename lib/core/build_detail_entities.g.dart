// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_detail_entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BuildDetailsData extends BuildDetailsData {
  @override
  final LoadState state;
  @override
  final AppBuild data;
  @override
  final BuildLog log;
  @override
  final String errorMessage;

  factory _$BuildDetailsData(
          [void Function(BuildDetailsDataBuilder) updates]) =>
      (new BuildDetailsDataBuilder()..update(updates)).build();

  _$BuildDetailsData._({this.state, this.data, this.log, this.errorMessage})
      : super._() {
    if (state == null) {
      throw new BuiltValueNullFieldError('BuildDetailsData', 'state');
    }
  }

  @override
  BuildDetailsData rebuild(void Function(BuildDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildDetailsDataBuilder toBuilder() =>
      new BuildDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildDetailsData &&
        state == other.state &&
        data == other.data &&
        log == other.log &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, state.hashCode), data.hashCode), log.hashCode),
        errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuildDetailsData')
          ..add('state', state)
          ..add('data', data)
          ..add('log', log)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class BuildDetailsDataBuilder
    implements Builder<BuildDetailsData, BuildDetailsDataBuilder> {
  _$BuildDetailsData _$v;

  LoadState _state;
  LoadState get state => _$this._state;
  set state(LoadState state) => _$this._state = state;

  AppBuildBuilder _data;
  AppBuildBuilder get data => _$this._data ??= new AppBuildBuilder();
  set data(AppBuildBuilder data) => _$this._data = data;

  BuildLogBuilder _log;
  BuildLogBuilder get log => _$this._log ??= new BuildLogBuilder();
  set log(BuildLogBuilder log) => _$this._log = log;

  String _errorMessage;
  String get errorMessage => _$this._errorMessage;
  set errorMessage(String errorMessage) => _$this._errorMessage = errorMessage;

  BuildDetailsDataBuilder();

  BuildDetailsDataBuilder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _data = _$v.data?.toBuilder();
      _log = _$v.log?.toBuilder();
      _errorMessage = _$v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildDetailsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildDetailsData;
  }

  @override
  void update(void Function(BuildDetailsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildDetailsData build() {
    _$BuildDetailsData _$result;
    try {
      _$result = _$v ??
          new _$BuildDetailsData._(
              state: state,
              data: _data?.build(),
              log: _log?.build(),
              errorMessage: errorMessage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'log';
        _log?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuildDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
