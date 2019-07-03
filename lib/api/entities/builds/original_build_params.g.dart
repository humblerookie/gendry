// GENERATED CODE - DO NOT MODIFY BY HAND

part of original_build_params;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OriginalBuildParams> _$originalBuildParamsSerializer =
    new _$OriginalBuildParamsSerializer();

class _$OriginalBuildParamsSerializer
    implements StructuredSerializer<OriginalBuildParams> {
  @override
  final Iterable<Type> types = const [
    OriginalBuildParams,
    _$OriginalBuildParams
  ];
  @override
  final String wireName = 'OriginalBuildParams';

  @override
  Iterable serialize(Serializers serializers, OriginalBuildParams object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.commitHash != null) {
      result
        ..add('commit_hash')
        ..add(serializers.serialize(object.commitHash,
            specifiedType: const FullType(String)));
    }
    if (object.commitMessage != null) {
      result
        ..add('commit_message')
        ..add(serializers.serialize(object.commitMessage,
            specifiedType: const FullType(String)));
    }
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(String)));
    }
    if (object.branchRepoOwner != null) {
      result
        ..add('branch_repo_owner')
        ..add(serializers.serialize(object.branchRepoOwner,
            specifiedType: const FullType(String)));
    }
    if (object.branchDest != null) {
      result
        ..add('branch_dest')
        ..add(serializers.serialize(object.branchDest,
            specifiedType: const FullType(String)));
    }
    if (object.branchDestRepoOwner != null) {
      result
        ..add('branch_dest_repo_owner')
        ..add(serializers.serialize(object.branchDestRepoOwner,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestId != null) {
      result
        ..add('pull_request_id')
        ..add(serializers.serialize(object.pullRequestId,
            specifiedType: const FullType(int)));
    }
    if (object.pullRequestRepositoryUrl != null) {
      result
        ..add('pull_request_repository_url')
        ..add(serializers.serialize(object.pullRequestRepositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestMergeBranch != null) {
      result
        ..add('pull_request_merge_branch')
        ..add(serializers.serialize(object.pullRequestMergeBranch,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestHeadBranch != null) {
      result
        ..add('pull_request_head_branch')
        ..add(serializers.serialize(object.pullRequestHeadBranch,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestAuthor != null) {
      result
        ..add('pull_request_author')
        ..add(serializers.serialize(object.pullRequestAuthor,
            specifiedType: const FullType(String)));
    }
    if (object.diffUrl != null) {
      result
        ..add('diff_url')
        ..add(serializers.serialize(object.diffUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OriginalBuildParams deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OriginalBuildParamsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'commit_hash':
          result.commitHash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_message':
          result.commitMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch_repo_owner':
          result.branchRepoOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch_dest':
          result.branchDest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch_dest_repo_owner':
          result.branchDestRepoOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_id':
          result.pullRequestId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pull_request_repository_url':
          result.pullRequestRepositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_merge_branch':
          result.pullRequestMergeBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_head_branch':
          result.pullRequestHeadBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_author':
          result.pullRequestAuthor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'diff_url':
          result.diffUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OriginalBuildParams extends OriginalBuildParams {
  @override
  final String commitHash;
  @override
  final String commitMessage;
  @override
  final String branch;
  @override
  final String branchRepoOwner;
  @override
  final String branchDest;
  @override
  final String branchDestRepoOwner;
  @override
  final int pullRequestId;
  @override
  final String pullRequestRepositoryUrl;
  @override
  final String pullRequestMergeBranch;
  @override
  final String pullRequestHeadBranch;
  @override
  final String pullRequestAuthor;
  @override
  final String diffUrl;

  factory _$OriginalBuildParams(
          [void Function(OriginalBuildParamsBuilder) updates]) =>
      (new OriginalBuildParamsBuilder()..update(updates)).build();

  _$OriginalBuildParams._(
      {this.commitHash,
      this.commitMessage,
      this.branch,
      this.branchRepoOwner,
      this.branchDest,
      this.branchDestRepoOwner,
      this.pullRequestId,
      this.pullRequestRepositoryUrl,
      this.pullRequestMergeBranch,
      this.pullRequestHeadBranch,
      this.pullRequestAuthor,
      this.diffUrl})
      : super._();

  @override
  OriginalBuildParams rebuild(
          void Function(OriginalBuildParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OriginalBuildParamsBuilder toBuilder() =>
      new OriginalBuildParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OriginalBuildParams &&
        commitHash == other.commitHash &&
        commitMessage == other.commitMessage &&
        branch == other.branch &&
        branchRepoOwner == other.branchRepoOwner &&
        branchDest == other.branchDest &&
        branchDestRepoOwner == other.branchDestRepoOwner &&
        pullRequestId == other.pullRequestId &&
        pullRequestRepositoryUrl == other.pullRequestRepositoryUrl &&
        pullRequestMergeBranch == other.pullRequestMergeBranch &&
        pullRequestHeadBranch == other.pullRequestHeadBranch &&
        pullRequestAuthor == other.pullRequestAuthor &&
        diffUrl == other.diffUrl;
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
                                            $jc($jc(0, commitHash.hashCode),
                                                commitMessage.hashCode),
                                            branch.hashCode),
                                        branchRepoOwner.hashCode),
                                    branchDest.hashCode),
                                branchDestRepoOwner.hashCode),
                            pullRequestId.hashCode),
                        pullRequestRepositoryUrl.hashCode),
                    pullRequestMergeBranch.hashCode),
                pullRequestHeadBranch.hashCode),
            pullRequestAuthor.hashCode),
        diffUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OriginalBuildParams')
          ..add('commitHash', commitHash)
          ..add('commitMessage', commitMessage)
          ..add('branch', branch)
          ..add('branchRepoOwner', branchRepoOwner)
          ..add('branchDest', branchDest)
          ..add('branchDestRepoOwner', branchDestRepoOwner)
          ..add('pullRequestId', pullRequestId)
          ..add('pullRequestRepositoryUrl', pullRequestRepositoryUrl)
          ..add('pullRequestMergeBranch', pullRequestMergeBranch)
          ..add('pullRequestHeadBranch', pullRequestHeadBranch)
          ..add('pullRequestAuthor', pullRequestAuthor)
          ..add('diffUrl', diffUrl))
        .toString();
  }
}

class OriginalBuildParamsBuilder
    implements Builder<OriginalBuildParams, OriginalBuildParamsBuilder> {
  _$OriginalBuildParams _$v;

  String _commitHash;
  String get commitHash => _$this._commitHash;
  set commitHash(String commitHash) => _$this._commitHash = commitHash;

  String _commitMessage;
  String get commitMessage => _$this._commitMessage;
  set commitMessage(String commitMessage) =>
      _$this._commitMessage = commitMessage;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _branchRepoOwner;
  String get branchRepoOwner => _$this._branchRepoOwner;
  set branchRepoOwner(String branchRepoOwner) =>
      _$this._branchRepoOwner = branchRepoOwner;

  String _branchDest;
  String get branchDest => _$this._branchDest;
  set branchDest(String branchDest) => _$this._branchDest = branchDest;

  String _branchDestRepoOwner;
  String get branchDestRepoOwner => _$this._branchDestRepoOwner;
  set branchDestRepoOwner(String branchDestRepoOwner) =>
      _$this._branchDestRepoOwner = branchDestRepoOwner;

  int _pullRequestId;
  int get pullRequestId => _$this._pullRequestId;
  set pullRequestId(int pullRequestId) => _$this._pullRequestId = pullRequestId;

  String _pullRequestRepositoryUrl;
  String get pullRequestRepositoryUrl => _$this._pullRequestRepositoryUrl;
  set pullRequestRepositoryUrl(String pullRequestRepositoryUrl) =>
      _$this._pullRequestRepositoryUrl = pullRequestRepositoryUrl;

  String _pullRequestMergeBranch;
  String get pullRequestMergeBranch => _$this._pullRequestMergeBranch;
  set pullRequestMergeBranch(String pullRequestMergeBranch) =>
      _$this._pullRequestMergeBranch = pullRequestMergeBranch;

  String _pullRequestHeadBranch;
  String get pullRequestHeadBranch => _$this._pullRequestHeadBranch;
  set pullRequestHeadBranch(String pullRequestHeadBranch) =>
      _$this._pullRequestHeadBranch = pullRequestHeadBranch;

  String _pullRequestAuthor;
  String get pullRequestAuthor => _$this._pullRequestAuthor;
  set pullRequestAuthor(String pullRequestAuthor) =>
      _$this._pullRequestAuthor = pullRequestAuthor;

  String _diffUrl;
  String get diffUrl => _$this._diffUrl;
  set diffUrl(String diffUrl) => _$this._diffUrl = diffUrl;

  OriginalBuildParamsBuilder();

  OriginalBuildParamsBuilder get _$this {
    if (_$v != null) {
      _commitHash = _$v.commitHash;
      _commitMessage = _$v.commitMessage;
      _branch = _$v.branch;
      _branchRepoOwner = _$v.branchRepoOwner;
      _branchDest = _$v.branchDest;
      _branchDestRepoOwner = _$v.branchDestRepoOwner;
      _pullRequestId = _$v.pullRequestId;
      _pullRequestRepositoryUrl = _$v.pullRequestRepositoryUrl;
      _pullRequestMergeBranch = _$v.pullRequestMergeBranch;
      _pullRequestHeadBranch = _$v.pullRequestHeadBranch;
      _pullRequestAuthor = _$v.pullRequestAuthor;
      _diffUrl = _$v.diffUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OriginalBuildParams other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OriginalBuildParams;
  }

  @override
  void update(void Function(OriginalBuildParamsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OriginalBuildParams build() {
    final _$result = _$v ??
        new _$OriginalBuildParams._(
            commitHash: commitHash,
            commitMessage: commitMessage,
            branch: branch,
            branchRepoOwner: branchRepoOwner,
            branchDest: branchDest,
            branchDestRepoOwner: branchDestRepoOwner,
            pullRequestId: pullRequestId,
            pullRequestRepositoryUrl: pullRequestRepositoryUrl,
            pullRequestMergeBranch: pullRequestMergeBranch,
            pullRequestHeadBranch: pullRequestHeadBranch,
            pullRequestAuthor: pullRequestAuthor,
            diffUrl: diffUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
