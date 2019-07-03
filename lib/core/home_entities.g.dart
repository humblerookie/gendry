// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeData extends HomeData {
  @override
  final LoadState state;
  @override
  final int filter;
  @override
  final List<AppBuild> appBuilds;
  @override
  final String errorMessage;

  factory _$HomeData([void Function(HomeDataBuilder) updates]) =>
      (new HomeDataBuilder()..update(updates)).build();

  _$HomeData._({this.state, this.filter, this.appBuilds, this.errorMessage})
      : super._() {
    if (state == null) {
      throw new BuiltValueNullFieldError('HomeData', 'state');
    }
    if (filter == null) {
      throw new BuiltValueNullFieldError('HomeData', 'filter');
    }
  }

  @override
  HomeData rebuild(void Function(HomeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeDataBuilder toBuilder() => new HomeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeData &&
        state == other.state &&
        filter == other.filter &&
        appBuilds == other.appBuilds &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, state.hashCode), filter.hashCode), appBuilds.hashCode),
        errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeData')
          ..add('state', state)
          ..add('filter', filter)
          ..add('appBuilds', appBuilds)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class HomeDataBuilder implements Builder<HomeData, HomeDataBuilder> {
  _$HomeData _$v;

  LoadState _state;
  LoadState get state => _$this._state;
  set state(LoadState state) => _$this._state = state;

  int _filter;
  int get filter => _$this._filter;
  set filter(int filter) => _$this._filter = filter;

  List<AppBuild> _appBuilds;
  List<AppBuild> get appBuilds => _$this._appBuilds;
  set appBuilds(List<AppBuild> appBuilds) => _$this._appBuilds = appBuilds;

  String _errorMessage;
  String get errorMessage => _$this._errorMessage;
  set errorMessage(String errorMessage) => _$this._errorMessage = errorMessage;

  HomeDataBuilder();

  HomeDataBuilder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _filter = _$v.filter;
      _appBuilds = _$v.appBuilds;
      _errorMessage = _$v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeData;
  }

  @override
  void update(void Function(HomeDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeData build() {
    final _$result = _$v ??
        new _$HomeData._(
            state: state,
            filter: filter,
            appBuilds: appBuilds,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
