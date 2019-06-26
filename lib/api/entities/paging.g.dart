// GENERATED CODE - DO NOT MODIFY BY HAND

part of paging;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Paging> _$pagingSerializer = new _$PagingSerializer();

class _$PagingSerializer implements StructuredSerializer<Paging> {
  @override
  final Iterable<Type> types = const [Paging, _$Paging];
  @override
  final String wireName = 'Paging';

  @override
  Iterable serialize(Serializers serializers, Paging object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'total_item_count',
      serializers.serialize(object.totalItemCount,
          specifiedType: const FullType(int)),
      'page_item_limit',
      serializers.serialize(object.pageItemLimit,
          specifiedType: const FullType(int)),
      'next',
      serializers.serialize(object.next, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Paging deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PagingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_item_count':
          result.totalItemCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'page_item_limit':
          result.pageItemLimit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Paging extends Paging {
  @override
  final int totalItemCount;
  @override
  final int pageItemLimit;
  @override
  final String next;

  factory _$Paging([void Function(PagingBuilder) updates]) =>
      (new PagingBuilder()..update(updates)).build();

  _$Paging._({this.totalItemCount, this.pageItemLimit, this.next}) : super._() {
    if (totalItemCount == null) {
      throw new BuiltValueNullFieldError('Paging', 'totalItemCount');
    }
    if (pageItemLimit == null) {
      throw new BuiltValueNullFieldError('Paging', 'pageItemLimit');
    }
    if (next == null) {
      throw new BuiltValueNullFieldError('Paging', 'next');
    }
  }

  @override
  Paging rebuild(void Function(PagingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PagingBuilder toBuilder() => new PagingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Paging &&
        totalItemCount == other.totalItemCount &&
        pageItemLimit == other.pageItemLimit &&
        next == other.next;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, totalItemCount.hashCode), pageItemLimit.hashCode),
        next.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Paging')
          ..add('totalItemCount', totalItemCount)
          ..add('pageItemLimit', pageItemLimit)
          ..add('next', next))
        .toString();
  }
}

class PagingBuilder implements Builder<Paging, PagingBuilder> {
  _$Paging _$v;

  int _totalItemCount;
  int get totalItemCount => _$this._totalItemCount;
  set totalItemCount(int totalItemCount) =>
      _$this._totalItemCount = totalItemCount;

  int _pageItemLimit;
  int get pageItemLimit => _$this._pageItemLimit;
  set pageItemLimit(int pageItemLimit) => _$this._pageItemLimit = pageItemLimit;

  String _next;
  String get next => _$this._next;
  set next(String next) => _$this._next = next;

  PagingBuilder();

  PagingBuilder get _$this {
    if (_$v != null) {
      _totalItemCount = _$v.totalItemCount;
      _pageItemLimit = _$v.pageItemLimit;
      _next = _$v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Paging other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Paging;
  }

  @override
  void update(void Function(PagingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Paging build() {
    final _$result = _$v ??
        new _$Paging._(
            totalItemCount: totalItemCount,
            pageItemLimit: pageItemLimit,
            next: next);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
