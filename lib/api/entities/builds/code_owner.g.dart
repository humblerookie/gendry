// GENERATED CODE - DO NOT MODIFY BY HAND

part of code_owner;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeOwner> _$codeOwnerSerializer = new _$CodeOwnerSerializer();

class _$CodeOwnerSerializer implements StructuredSerializer<CodeOwner> {
  @override
  final Iterable<Type> types = const [CodeOwner, _$CodeOwner];
  @override
  final String wireName = 'CodeOwner';

  @override
  Iterable serialize(Serializers serializers, CodeOwner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'account_type',
      serializers.serialize(object.accountType,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CodeOwner deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeOwnerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'account_type':
          result.accountType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeOwner extends CodeOwner {
  @override
  final String accountType;
  @override
  final String name;
  @override
  final String slug;

  factory _$CodeOwner([void Function(CodeOwnerBuilder) updates]) =>
      (new CodeOwnerBuilder()..update(updates)).build();

  _$CodeOwner._({this.accountType, this.name, this.slug}) : super._() {
    if (accountType == null) {
      throw new BuiltValueNullFieldError('CodeOwner', 'accountType');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CodeOwner', 'name');
    }
    if (slug == null) {
      throw new BuiltValueNullFieldError('CodeOwner', 'slug');
    }
  }

  @override
  CodeOwner rebuild(void Function(CodeOwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeOwnerBuilder toBuilder() => new CodeOwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeOwner &&
        accountType == other.accountType &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, accountType.hashCode), name.hashCode), slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeOwner')
          ..add('accountType', accountType)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class CodeOwnerBuilder implements Builder<CodeOwner, CodeOwnerBuilder> {
  _$CodeOwner _$v;

  String _accountType;
  String get accountType => _$this._accountType;
  set accountType(String accountType) => _$this._accountType = accountType;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  CodeOwnerBuilder();

  CodeOwnerBuilder get _$this {
    if (_$v != null) {
      _accountType = _$v.accountType;
      _name = _$v.name;
      _slug = _$v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeOwner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeOwner;
  }

  @override
  void update(void Function(CodeOwnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeOwner build() {
    final _$result = _$v ??
        new _$CodeOwner._(accountType: accountType, name: name, slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
