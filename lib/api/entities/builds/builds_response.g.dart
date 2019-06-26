// GENERATED CODE - DO NOT MODIFY BY HAND

part of builds_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildsResponse> _$buildsResponseSerializer =
    new _$BuildsResponseSerializer();

class _$BuildsResponseSerializer
    implements StructuredSerializer<BuildsResponse> {
  @override
  final Iterable<Type> types = const [BuildsResponse, _$BuildsResponse];
  @override
  final String wireName = 'BuildsResponse';

  @override
  Iterable serialize(Serializers serializers, BuildsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.appBuild,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AppBuild)])),
      'paging',
      serializers.serialize(object.paging,
          specifiedType: const FullType(Paging)),
    ];

    return result;
  }

  @override
  BuildsResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.appBuild.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AppBuild)])) as BuiltList);
          break;
        case 'paging':
          result.paging.replace(serializers.deserialize(value,
              specifiedType: const FullType(Paging)) as Paging);
          break;
      }
    }

    return result.build();
  }
}

class _$BuildsResponse extends BuildsResponse {
  @override
  final BuiltList<AppBuild> appBuild;
  @override
  final Paging paging;

  factory _$BuildsResponse([void Function(BuildsResponseBuilder) updates]) =>
      (new BuildsResponseBuilder()..update(updates)).build();

  _$BuildsResponse._({this.appBuild, this.paging}) : super._() {
    if (appBuild == null) {
      throw new BuiltValueNullFieldError('BuildsResponse', 'appBuild');
    }
    if (paging == null) {
      throw new BuiltValueNullFieldError('BuildsResponse', 'paging');
    }
  }

  @override
  BuildsResponse rebuild(void Function(BuildsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildsResponseBuilder toBuilder() =>
      new BuildsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildsResponse &&
        appBuild == other.appBuild &&
        paging == other.paging;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, appBuild.hashCode), paging.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuildsResponse')
          ..add('appBuild', appBuild)
          ..add('paging', paging))
        .toString();
  }
}

class BuildsResponseBuilder
    implements Builder<BuildsResponse, BuildsResponseBuilder> {
  _$BuildsResponse _$v;

  ListBuilder<AppBuild> _appBuild;
  ListBuilder<AppBuild> get appBuild =>
      _$this._appBuild ??= new ListBuilder<AppBuild>();
  set appBuild(ListBuilder<AppBuild> appBuild) => _$this._appBuild = appBuild;

  PagingBuilder _paging;
  PagingBuilder get paging => _$this._paging ??= new PagingBuilder();
  set paging(PagingBuilder paging) => _$this._paging = paging;

  BuildsResponseBuilder();

  BuildsResponseBuilder get _$this {
    if (_$v != null) {
      _appBuild = _$v.appBuild?.toBuilder();
      _paging = _$v.paging?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildsResponse;
  }

  @override
  void update(void Function(BuildsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildsResponse build() {
    _$BuildsResponse _$result;
    try {
      _$result = _$v ??
          new _$BuildsResponse._(
              appBuild: appBuild.build(), paging: paging.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'appBuild';
        appBuild.build();
        _$failedField = 'paging';
        paging.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuildsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
