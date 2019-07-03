// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_build;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppBuild> _$appBuildSerializer = new _$AppBuildSerializer();

class _$AppBuildSerializer implements StructuredSerializer<AppBuild> {
  @override
  final Iterable<Type> types = const [AppBuild, _$AppBuild];
  @override
  final String wireName = 'AppBuild';

  @override
  Iterable serialize(Serializers serializers, AppBuild object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.triggeredAt != null) {
      result
        ..add('triggered_at')
        ..add(serializers.serialize(object.triggeredAt,
            specifiedType: const FullType(String)));
    }
    if (object.startedOnWorkerAt != null) {
      result
        ..add('started_on_worker_at')
        ..add(serializers.serialize(object.startedOnWorkerAt,
            specifiedType: const FullType(String)));
    }
    if (object.environmentPrepareFinishedAt != null) {
      result
        ..add('environment_prepare_finished_at')
        ..add(serializers.serialize(object.environmentPrepareFinishedAt,
            specifiedType: const FullType(String)));
    }
    if (object.finishedAt != null) {
      result
        ..add('finished_at')
        ..add(serializers.serialize(object.finishedAt,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.statusText != null) {
      result
        ..add('status_text')
        ..add(serializers.serialize(object.statusText,
            specifiedType: const FullType(String)));
    }
    if (object.abortReason != null) {
      result
        ..add('abort_reason')
        ..add(serializers.serialize(object.abortReason,
            specifiedType: const FullType(String)));
    }
    if (object.isOnHold != null) {
      result
        ..add('is_on_hold')
        ..add(serializers.serialize(object.isOnHold,
            specifiedType: const FullType(bool)));
    }
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(String)));
    }
    if (object.buildNumber != null) {
      result
        ..add('build_number')
        ..add(serializers.serialize(object.buildNumber,
            specifiedType: const FullType(int)));
    }
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
    if (object.tag != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(object.tag,
            specifiedType: const FullType(String)));
    }
    if (object.triggeredWorkflow != null) {
      result
        ..add('triggered_workflow')
        ..add(serializers.serialize(object.triggeredWorkflow,
            specifiedType: const FullType(String)));
    }
    if (object.triggeredBy != null) {
      result
        ..add('triggered_by')
        ..add(serializers.serialize(object.triggeredBy,
            specifiedType: const FullType(String)));
    }
    if (object.stackConfigType != null) {
      result
        ..add('stack_config_type')
        ..add(serializers.serialize(object.stackConfigType,
            specifiedType: const FullType(String)));
    }
    if (object.stackIdentifier != null) {
      result
        ..add('stack_identifier')
        ..add(serializers.serialize(object.stackIdentifier,
            specifiedType: const FullType(String)));
    }
    if (object.originalBuildParams != null) {
      result
        ..add('original_build_params')
        ..add(serializers.serialize(object.originalBuildParams,
            specifiedType: const FullType(OriginalBuildParams)));
    }
    if (object.pullRequestId != null) {
      result
        ..add('pull_request_id')
        ..add(serializers.serialize(object.pullRequestId,
            specifiedType: const FullType(int)));
    }
    if (object.pullRequestTargetBranch != null) {
      result
        ..add('pull_request_target_branch')
        ..add(serializers.serialize(object.pullRequestTargetBranch,
            specifiedType: const FullType(String)));
    }
    if (object.pullRequestViewUrl != null) {
      result
        ..add('pull_request_view_url')
        ..add(serializers.serialize(object.pullRequestViewUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commitViewUrl != null) {
      result
        ..add('commit_view_url')
        ..add(serializers.serialize(object.commitViewUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(CodeRepository)));
    }
    return result;
  }

  @override
  AppBuild deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppBuildBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'triggered_at':
          result.triggeredAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'started_on_worker_at':
          result.startedOnWorkerAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment_prepare_finished_at':
          result.environmentPrepareFinishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'finished_at':
          result.finishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status_text':
          result.statusText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'abort_reason':
          result.abortReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_on_hold':
          result.isOnHold = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'build_number':
          result.buildNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'commit_hash':
          result.commitHash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_message':
          result.commitMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'triggered_workflow':
          result.triggeredWorkflow = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'triggered_by':
          result.triggeredBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stack_config_type':
          result.stackConfigType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stack_identifier':
          result.stackIdentifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_build_params':
          result.originalBuildParams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OriginalBuildParams))
              as OriginalBuildParams);
          break;
        case 'pull_request_id':
          result.pullRequestId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pull_request_target_branch':
          result.pullRequestTargetBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pull_request_view_url':
          result.pullRequestViewUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_view_url':
          result.commitViewUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
              specifiedType: const FullType(CodeRepository)) as CodeRepository);
          break;
      }
    }

    return result.build();
  }
}

class _$AppBuild extends AppBuild {
  @override
  final String triggeredAt;
  @override
  final String startedOnWorkerAt;
  @override
  final String environmentPrepareFinishedAt;
  @override
  final String finishedAt;
  @override
  final String slug;
  @override
  final int status;
  @override
  final String statusText;
  @override
  final String abortReason;
  @override
  final bool isOnHold;
  @override
  final String branch;
  @override
  final int buildNumber;
  @override
  final String commitHash;
  @override
  final String commitMessage;
  @override
  final String tag;
  @override
  final String triggeredWorkflow;
  @override
  final String triggeredBy;
  @override
  final String stackConfigType;
  @override
  final String stackIdentifier;
  @override
  final OriginalBuildParams originalBuildParams;
  @override
  final int pullRequestId;
  @override
  final String pullRequestTargetBranch;
  @override
  final String pullRequestViewUrl;
  @override
  final String commitViewUrl;
  @override
  final CodeRepository repository;

  factory _$AppBuild([void Function(AppBuildBuilder) updates]) =>
      (new AppBuildBuilder()..update(updates)).build();

  _$AppBuild._(
      {this.triggeredAt,
      this.startedOnWorkerAt,
      this.environmentPrepareFinishedAt,
      this.finishedAt,
      this.slug,
      this.status,
      this.statusText,
      this.abortReason,
      this.isOnHold,
      this.branch,
      this.buildNumber,
      this.commitHash,
      this.commitMessage,
      this.tag,
      this.triggeredWorkflow,
      this.triggeredBy,
      this.stackConfigType,
      this.stackIdentifier,
      this.originalBuildParams,
      this.pullRequestId,
      this.pullRequestTargetBranch,
      this.pullRequestViewUrl,
      this.commitViewUrl,
      this.repository})
      : super._();

  @override
  AppBuild rebuild(void Function(AppBuildBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppBuildBuilder toBuilder() => new AppBuildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppBuild &&
        triggeredAt == other.triggeredAt &&
        startedOnWorkerAt == other.startedOnWorkerAt &&
        environmentPrepareFinishedAt == other.environmentPrepareFinishedAt &&
        finishedAt == other.finishedAt &&
        slug == other.slug &&
        status == other.status &&
        statusText == other.statusText &&
        abortReason == other.abortReason &&
        isOnHold == other.isOnHold &&
        branch == other.branch &&
        buildNumber == other.buildNumber &&
        commitHash == other.commitHash &&
        commitMessage == other.commitMessage &&
        tag == other.tag &&
        triggeredWorkflow == other.triggeredWorkflow &&
        triggeredBy == other.triggeredBy &&
        stackConfigType == other.stackConfigType &&
        stackIdentifier == other.stackIdentifier &&
        originalBuildParams == other.originalBuildParams &&
        pullRequestId == other.pullRequestId &&
        pullRequestTargetBranch == other.pullRequestTargetBranch &&
        pullRequestViewUrl == other.pullRequestViewUrl &&
        commitViewUrl == other.commitViewUrl &&
        repository == other.repository;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, triggeredAt.hashCode), startedOnWorkerAt.hashCode), environmentPrepareFinishedAt.hashCode), finishedAt.hashCode), slug.hashCode),
                                                                                status.hashCode),
                                                                            statusText.hashCode),
                                                                        abortReason.hashCode),
                                                                    isOnHold.hashCode),
                                                                branch.hashCode),
                                                            buildNumber.hashCode),
                                                        commitHash.hashCode),
                                                    commitMessage.hashCode),
                                                tag.hashCode),
                                            triggeredWorkflow.hashCode),
                                        triggeredBy.hashCode),
                                    stackConfigType.hashCode),
                                stackIdentifier.hashCode),
                            originalBuildParams.hashCode),
                        pullRequestId.hashCode),
                    pullRequestTargetBranch.hashCode),
                pullRequestViewUrl.hashCode),
            commitViewUrl.hashCode),
        repository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppBuild')
          ..add('triggeredAt', triggeredAt)
          ..add('startedOnWorkerAt', startedOnWorkerAt)
          ..add('environmentPrepareFinishedAt', environmentPrepareFinishedAt)
          ..add('finishedAt', finishedAt)
          ..add('slug', slug)
          ..add('status', status)
          ..add('statusText', statusText)
          ..add('abortReason', abortReason)
          ..add('isOnHold', isOnHold)
          ..add('branch', branch)
          ..add('buildNumber', buildNumber)
          ..add('commitHash', commitHash)
          ..add('commitMessage', commitMessage)
          ..add('tag', tag)
          ..add('triggeredWorkflow', triggeredWorkflow)
          ..add('triggeredBy', triggeredBy)
          ..add('stackConfigType', stackConfigType)
          ..add('stackIdentifier', stackIdentifier)
          ..add('originalBuildParams', originalBuildParams)
          ..add('pullRequestId', pullRequestId)
          ..add('pullRequestTargetBranch', pullRequestTargetBranch)
          ..add('pullRequestViewUrl', pullRequestViewUrl)
          ..add('commitViewUrl', commitViewUrl)
          ..add('repository', repository))
        .toString();
  }
}

class AppBuildBuilder implements Builder<AppBuild, AppBuildBuilder> {
  _$AppBuild _$v;

  String _triggeredAt;
  String get triggeredAt => _$this._triggeredAt;
  set triggeredAt(String triggeredAt) => _$this._triggeredAt = triggeredAt;

  String _startedOnWorkerAt;
  String get startedOnWorkerAt => _$this._startedOnWorkerAt;
  set startedOnWorkerAt(String startedOnWorkerAt) =>
      _$this._startedOnWorkerAt = startedOnWorkerAt;

  String _environmentPrepareFinishedAt;
  String get environmentPrepareFinishedAt =>
      _$this._environmentPrepareFinishedAt;
  set environmentPrepareFinishedAt(String environmentPrepareFinishedAt) =>
      _$this._environmentPrepareFinishedAt = environmentPrepareFinishedAt;

  String _finishedAt;
  String get finishedAt => _$this._finishedAt;
  set finishedAt(String finishedAt) => _$this._finishedAt = finishedAt;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _statusText;
  String get statusText => _$this._statusText;
  set statusText(String statusText) => _$this._statusText = statusText;

  String _abortReason;
  String get abortReason => _$this._abortReason;
  set abortReason(String abortReason) => _$this._abortReason = abortReason;

  bool _isOnHold;
  bool get isOnHold => _$this._isOnHold;
  set isOnHold(bool isOnHold) => _$this._isOnHold = isOnHold;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  int _buildNumber;
  int get buildNumber => _$this._buildNumber;
  set buildNumber(int buildNumber) => _$this._buildNumber = buildNumber;

  String _commitHash;
  String get commitHash => _$this._commitHash;
  set commitHash(String commitHash) => _$this._commitHash = commitHash;

  String _commitMessage;
  String get commitMessage => _$this._commitMessage;
  set commitMessage(String commitMessage) =>
      _$this._commitMessage = commitMessage;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  String _triggeredWorkflow;
  String get triggeredWorkflow => _$this._triggeredWorkflow;
  set triggeredWorkflow(String triggeredWorkflow) =>
      _$this._triggeredWorkflow = triggeredWorkflow;

  String _triggeredBy;
  String get triggeredBy => _$this._triggeredBy;
  set triggeredBy(String triggeredBy) => _$this._triggeredBy = triggeredBy;

  String _stackConfigType;
  String get stackConfigType => _$this._stackConfigType;
  set stackConfigType(String stackConfigType) =>
      _$this._stackConfigType = stackConfigType;

  String _stackIdentifier;
  String get stackIdentifier => _$this._stackIdentifier;
  set stackIdentifier(String stackIdentifier) =>
      _$this._stackIdentifier = stackIdentifier;

  OriginalBuildParamsBuilder _originalBuildParams;
  OriginalBuildParamsBuilder get originalBuildParams =>
      _$this._originalBuildParams ??= new OriginalBuildParamsBuilder();
  set originalBuildParams(OriginalBuildParamsBuilder originalBuildParams) =>
      _$this._originalBuildParams = originalBuildParams;

  int _pullRequestId;
  int get pullRequestId => _$this._pullRequestId;
  set pullRequestId(int pullRequestId) => _$this._pullRequestId = pullRequestId;

  String _pullRequestTargetBranch;
  String get pullRequestTargetBranch => _$this._pullRequestTargetBranch;
  set pullRequestTargetBranch(String pullRequestTargetBranch) =>
      _$this._pullRequestTargetBranch = pullRequestTargetBranch;

  String _pullRequestViewUrl;
  String get pullRequestViewUrl => _$this._pullRequestViewUrl;
  set pullRequestViewUrl(String pullRequestViewUrl) =>
      _$this._pullRequestViewUrl = pullRequestViewUrl;

  String _commitViewUrl;
  String get commitViewUrl => _$this._commitViewUrl;
  set commitViewUrl(String commitViewUrl) =>
      _$this._commitViewUrl = commitViewUrl;

  CodeRepositoryBuilder _repository;
  CodeRepositoryBuilder get repository =>
      _$this._repository ??= new CodeRepositoryBuilder();
  set repository(CodeRepositoryBuilder repository) =>
      _$this._repository = repository;

  AppBuildBuilder();

  AppBuildBuilder get _$this {
    if (_$v != null) {
      _triggeredAt = _$v.triggeredAt;
      _startedOnWorkerAt = _$v.startedOnWorkerAt;
      _environmentPrepareFinishedAt = _$v.environmentPrepareFinishedAt;
      _finishedAt = _$v.finishedAt;
      _slug = _$v.slug;
      _status = _$v.status;
      _statusText = _$v.statusText;
      _abortReason = _$v.abortReason;
      _isOnHold = _$v.isOnHold;
      _branch = _$v.branch;
      _buildNumber = _$v.buildNumber;
      _commitHash = _$v.commitHash;
      _commitMessage = _$v.commitMessage;
      _tag = _$v.tag;
      _triggeredWorkflow = _$v.triggeredWorkflow;
      _triggeredBy = _$v.triggeredBy;
      _stackConfigType = _$v.stackConfigType;
      _stackIdentifier = _$v.stackIdentifier;
      _originalBuildParams = _$v.originalBuildParams?.toBuilder();
      _pullRequestId = _$v.pullRequestId;
      _pullRequestTargetBranch = _$v.pullRequestTargetBranch;
      _pullRequestViewUrl = _$v.pullRequestViewUrl;
      _commitViewUrl = _$v.commitViewUrl;
      _repository = _$v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppBuild other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppBuild;
  }

  @override
  void update(void Function(AppBuildBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppBuild build() {
    _$AppBuild _$result;
    try {
      _$result = _$v ??
          new _$AppBuild._(
              triggeredAt: triggeredAt,
              startedOnWorkerAt: startedOnWorkerAt,
              environmentPrepareFinishedAt: environmentPrepareFinishedAt,
              finishedAt: finishedAt,
              slug: slug,
              status: status,
              statusText: statusText,
              abortReason: abortReason,
              isOnHold: isOnHold,
              branch: branch,
              buildNumber: buildNumber,
              commitHash: commitHash,
              commitMessage: commitMessage,
              tag: tag,
              triggeredWorkflow: triggeredWorkflow,
              triggeredBy: triggeredBy,
              stackConfigType: stackConfigType,
              stackIdentifier: stackIdentifier,
              originalBuildParams: _originalBuildParams?.build(),
              pullRequestId: pullRequestId,
              pullRequestTargetBranch: pullRequestTargetBranch,
              pullRequestViewUrl: pullRequestViewUrl,
              commitViewUrl: commitViewUrl,
              repository: _repository?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'originalBuildParams';
        _originalBuildParams?.build();

        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppBuild', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
