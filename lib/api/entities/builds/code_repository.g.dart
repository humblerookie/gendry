// GENERATED CODE - DO NOT MODIFY BY HAND

part of code_repository;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeRepository> _$codeRepositorySerializer =
    new _$CodeRepositorySerializer();

class _$CodeRepositorySerializer
    implements StructuredSerializer<CodeRepository> {
  @override
  final Iterable<Type> types = const [CodeRepository, _$CodeRepository];
  @override
  final String wireName = 'CodeRepository';

  @override
  Iterable serialize(Serializers serializers, CodeRepository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'project_type',
      serializers.serialize(object.projectType,
          specifiedType: const FullType(String)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(String)),
      'repo_owner',
      serializers.serialize(object.repoOwner,
          specifiedType: const FullType(String)),
      'repo_url',
      serializers.serialize(object.repoUrl,
          specifiedType: const FullType(String)),
      'repo_slug',
      serializers.serialize(object.repoSlug,
          specifiedType: const FullType(String)),
      'is_disabled',
      serializers.serialize(object.isDisabled,
          specifiedType: const FullType(bool)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'is_public',
      serializers.serialize(object.isPublic,
          specifiedType: const FullType(bool)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(CodeOwner)),
    ];
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeRepository deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeRepositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_type':
          result.projectType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repo_owner':
          result.repoOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repo_url':
          result.repoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repo_slug':
          result.repoSlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_disabled':
          result.isDisabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_public':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(CodeOwner)) as CodeOwner);
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeRepository extends CodeRepository {
  @override
  final String slug;
  @override
  final String title;
  @override
  final String projectType;
  @override
  final String provider;
  @override
  final String repoOwner;
  @override
  final String repoUrl;
  @override
  final String repoSlug;
  @override
  final bool isDisabled;
  @override
  final int status;
  @override
  final bool isPublic;
  @override
  final CodeOwner owner;
  @override
  final String avatarUrl;

  factory _$CodeRepository([void Function(CodeRepositoryBuilder) updates]) =>
      (new CodeRepositoryBuilder()..update(updates)).build();

  _$CodeRepository._(
      {this.slug,
      this.title,
      this.projectType,
      this.provider,
      this.repoOwner,
      this.repoUrl,
      this.repoSlug,
      this.isDisabled,
      this.status,
      this.isPublic,
      this.owner,
      this.avatarUrl})
      : super._() {
    if (slug == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'slug');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'title');
    }
    if (projectType == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'projectType');
    }
    if (provider == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'provider');
    }
    if (repoOwner == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'repoOwner');
    }
    if (repoUrl == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'repoUrl');
    }
    if (repoSlug == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'repoSlug');
    }
    if (isDisabled == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'isDisabled');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'status');
    }
    if (isPublic == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'isPublic');
    }
    if (owner == null) {
      throw new BuiltValueNullFieldError('CodeRepository', 'owner');
    }
  }

  @override
  CodeRepository rebuild(void Function(CodeRepositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeRepositoryBuilder toBuilder() =>
      new CodeRepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeRepository &&
        slug == other.slug &&
        title == other.title &&
        projectType == other.projectType &&
        provider == other.provider &&
        repoOwner == other.repoOwner &&
        repoUrl == other.repoUrl &&
        repoSlug == other.repoSlug &&
        isDisabled == other.isDisabled &&
        status == other.status &&
        isPublic == other.isPublic &&
        owner == other.owner &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, slug.hashCode),
                                                title.hashCode),
                                            projectType.hashCode),
                                        provider.hashCode),
                                    repoOwner.hashCode),
                                repoUrl.hashCode),
                            repoSlug.hashCode),
                        isDisabled.hashCode),
                    status.hashCode),
                isPublic.hashCode),
            owner.hashCode),
        avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeRepository')
          ..add('slug', slug)
          ..add('title', title)
          ..add('projectType', projectType)
          ..add('provider', provider)
          ..add('repoOwner', repoOwner)
          ..add('repoUrl', repoUrl)
          ..add('repoSlug', repoSlug)
          ..add('isDisabled', isDisabled)
          ..add('status', status)
          ..add('isPublic', isPublic)
          ..add('owner', owner)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class CodeRepositoryBuilder
    implements Builder<CodeRepository, CodeRepositoryBuilder> {
  _$CodeRepository _$v;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _projectType;
  String get projectType => _$this._projectType;
  set projectType(String projectType) => _$this._projectType = projectType;

  String _provider;
  String get provider => _$this._provider;
  set provider(String provider) => _$this._provider = provider;

  String _repoOwner;
  String get repoOwner => _$this._repoOwner;
  set repoOwner(String repoOwner) => _$this._repoOwner = repoOwner;

  String _repoUrl;
  String get repoUrl => _$this._repoUrl;
  set repoUrl(String repoUrl) => _$this._repoUrl = repoUrl;

  String _repoSlug;
  String get repoSlug => _$this._repoSlug;
  set repoSlug(String repoSlug) => _$this._repoSlug = repoSlug;

  bool _isDisabled;
  bool get isDisabled => _$this._isDisabled;
  set isDisabled(bool isDisabled) => _$this._isDisabled = isDisabled;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  bool _isPublic;
  bool get isPublic => _$this._isPublic;
  set isPublic(bool isPublic) => _$this._isPublic = isPublic;

  CodeOwnerBuilder _owner;
  CodeOwnerBuilder get owner => _$this._owner ??= new CodeOwnerBuilder();
  set owner(CodeOwnerBuilder owner) => _$this._owner = owner;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  CodeRepositoryBuilder();

  CodeRepositoryBuilder get _$this {
    if (_$v != null) {
      _slug = _$v.slug;
      _title = _$v.title;
      _projectType = _$v.projectType;
      _provider = _$v.provider;
      _repoOwner = _$v.repoOwner;
      _repoUrl = _$v.repoUrl;
      _repoSlug = _$v.repoSlug;
      _isDisabled = _$v.isDisabled;
      _status = _$v.status;
      _isPublic = _$v.isPublic;
      _owner = _$v.owner?.toBuilder();
      _avatarUrl = _$v.avatarUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeRepository other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeRepository;
  }

  @override
  void update(void Function(CodeRepositoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeRepository build() {
    _$CodeRepository _$result;
    try {
      _$result = _$v ??
          new _$CodeRepository._(
              slug: slug,
              title: title,
              projectType: projectType,
              provider: provider,
              repoOwner: repoOwner,
              repoUrl: repoUrl,
              repoSlug: repoSlug,
              isDisabled: isDisabled,
              status: status,
              isPublic: isPublic,
              owner: owner.build(),
              avatarUrl: avatarUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CodeRepository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
