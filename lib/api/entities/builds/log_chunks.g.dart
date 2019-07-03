// GENERATED CODE - DO NOT MODIFY BY HAND

part of log_chunks;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogChunks> _$logChunksSerializer = new _$LogChunksSerializer();

class _$LogChunksSerializer implements StructuredSerializer<LogChunks> {
  @override
  final Iterable<Type> types = const [LogChunks, _$LogChunks];
  @override
  final String wireName = 'LogChunks';

  @override
  Iterable serialize(Serializers serializers, LogChunks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'chunk',
      serializers.serialize(object.chunk,
          specifiedType: const FullType(String)),
      'position',
      serializers.serialize(object.position,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  LogChunks deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogChunksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'chunk':
          result.chunk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LogChunks extends LogChunks {
  @override
  final String chunk;
  @override
  final int position;

  factory _$LogChunks([void Function(LogChunksBuilder) updates]) =>
      (new LogChunksBuilder()..update(updates)).build();

  _$LogChunks._({this.chunk, this.position}) : super._() {
    if (chunk == null) {
      throw new BuiltValueNullFieldError('LogChunks', 'chunk');
    }
    if (position == null) {
      throw new BuiltValueNullFieldError('LogChunks', 'position');
    }
  }

  @override
  LogChunks rebuild(void Function(LogChunksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogChunksBuilder toBuilder() => new LogChunksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogChunks &&
        chunk == other.chunk &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, chunk.hashCode), position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogChunks')
          ..add('chunk', chunk)
          ..add('position', position))
        .toString();
  }
}

class LogChunksBuilder implements Builder<LogChunks, LogChunksBuilder> {
  _$LogChunks _$v;

  String _chunk;
  String get chunk => _$this._chunk;
  set chunk(String chunk) => _$this._chunk = chunk;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  LogChunksBuilder();

  LogChunksBuilder get _$this {
    if (_$v != null) {
      _chunk = _$v.chunk;
      _position = _$v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogChunks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LogChunks;
  }

  @override
  void update(void Function(LogChunksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogChunks build() {
    final _$result = _$v ?? new _$LogChunks._(chunk: chunk, position: position);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
