// GENERATED CODE - DO NOT MODIFY BY HAND

part of build_log;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildLog> _$buildLogSerializer = new _$BuildLogSerializer();

class _$BuildLogSerializer implements StructuredSerializer<BuildLog> {
  @override
  final Iterable<Type> types = const [BuildLog, _$BuildLog];
  @override
  final String wireName = 'BuildLog';

  @override
  Iterable serialize(Serializers serializers, BuildLog object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'expiring_raw_log_url',
      serializers.serialize(object.expiringRawLogUrl,
          specifiedType: const FullType(String)),
      'log_chunks',
      serializers.serialize(object.logChunks,
          specifiedType:
              const FullType(BuiltList, const [const FullType(LogChunks)])),
    ];
    if (object.log != null) {
      result
        ..add('log')
        ..add(serializers.serialize(object.log,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuildLog deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildLogBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'expiring_raw_log_url':
          result.expiringRawLogUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'log_chunks':
          result.logChunks.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(LogChunks)])) as BuiltList);
          break;
        case 'log':
          result.log = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildLog extends BuildLog {
  @override
  final String expiringRawLogUrl;
  @override
  final BuiltList<LogChunks> logChunks;
  @override
  final String log;

  factory _$BuildLog([void Function(BuildLogBuilder) updates]) =>
      (new BuildLogBuilder()..update(updates)).build();

  _$BuildLog._({this.expiringRawLogUrl, this.logChunks, this.log}) : super._() {
    if (expiringRawLogUrl == null) {
      throw new BuiltValueNullFieldError('BuildLog', 'expiringRawLogUrl');
    }
    if (logChunks == null) {
      throw new BuiltValueNullFieldError('BuildLog', 'logChunks');
    }
  }

  @override
  BuildLog rebuild(void Function(BuildLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildLogBuilder toBuilder() => new BuildLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildLog &&
        expiringRawLogUrl == other.expiringRawLogUrl &&
        logChunks == other.logChunks &&
        log == other.log;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, expiringRawLogUrl.hashCode), logChunks.hashCode),
        log.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuildLog')
          ..add('expiringRawLogUrl', expiringRawLogUrl)
          ..add('logChunks', logChunks)
          ..add('log', log))
        .toString();
  }
}

class BuildLogBuilder implements Builder<BuildLog, BuildLogBuilder> {
  _$BuildLog _$v;

  String _expiringRawLogUrl;
  String get expiringRawLogUrl => _$this._expiringRawLogUrl;
  set expiringRawLogUrl(String expiringRawLogUrl) =>
      _$this._expiringRawLogUrl = expiringRawLogUrl;

  ListBuilder<LogChunks> _logChunks;
  ListBuilder<LogChunks> get logChunks =>
      _$this._logChunks ??= new ListBuilder<LogChunks>();
  set logChunks(ListBuilder<LogChunks> logChunks) =>
      _$this._logChunks = logChunks;

  String _log;
  String get log => _$this._log;
  set log(String log) => _$this._log = log;

  BuildLogBuilder();

  BuildLogBuilder get _$this {
    if (_$v != null) {
      _expiringRawLogUrl = _$v.expiringRawLogUrl;
      _logChunks = _$v.logChunks?.toBuilder();
      _log = _$v.log;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildLog other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildLog;
  }

  @override
  void update(void Function(BuildLogBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildLog build() {
    _$BuildLog _$result;
    try {
      _$result = _$v ??
          new _$BuildLog._(
              expiringRawLogUrl: expiringRawLogUrl,
              logChunks: logChunks.build(),
              log: log);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'logChunks';
        logChunks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuildLog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
