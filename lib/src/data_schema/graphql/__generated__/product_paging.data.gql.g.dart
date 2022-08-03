// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_paging.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPRODUCTPAGINGData> _$gPRODUCTPAGINGDataSerializer =
    new _$GPRODUCTPAGINGDataSerializer();
Serializer<GPRODUCTPAGINGData_productsPaging>
    _$gPRODUCTPAGINGDataProductsPagingSerializer =
    new _$GPRODUCTPAGINGData_productsPagingSerializer();
Serializer<GPRODUCTPAGINGData_productsPaging_pageInfo>
    _$gPRODUCTPAGINGDataProductsPagingPageInfoSerializer =
    new _$GPRODUCTPAGINGData_productsPaging_pageInfoSerializer();
Serializer<GPRODUCTPAGINGData_productsPaging_edges>
    _$gPRODUCTPAGINGDataProductsPagingEdgesSerializer =
    new _$GPRODUCTPAGINGData_productsPaging_edgesSerializer();
Serializer<GPRODUCTPAGINGData_productsPaging_edges_node>
    _$gPRODUCTPAGINGDataProductsPagingEdgesNodeSerializer =
    new _$GPRODUCTPAGINGData_productsPaging_edges_nodeSerializer();
Serializer<GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>
    _$gPRODUCTPAGINGDataProductsPagingEdgesNodePricesByProductIdSerializer =
    new _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdSerializer();

class _$GPRODUCTPAGINGDataSerializer
    implements StructuredSerializer<GPRODUCTPAGINGData> {
  @override
  final Iterable<Type> types = const [GPRODUCTPAGINGData, _$GPRODUCTPAGINGData];
  @override
  final String wireName = 'GPRODUCTPAGINGData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPRODUCTPAGINGData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.productsPaging;
    if (value != null) {
      result
        ..add('productsPaging')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPRODUCTPAGINGData_productsPaging)));
    }
    return result;
  }

  @override
  GPRODUCTPAGINGData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPRODUCTPAGINGDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'productsPaging':
          result.productsPaging.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GPRODUCTPAGINGData_productsPaging))!
              as GPRODUCTPAGINGData_productsPaging);
          break;
      }
    }

    return result.build();
  }
}

class _$GPRODUCTPAGINGData_productsPagingSerializer
    implements StructuredSerializer<GPRODUCTPAGINGData_productsPaging> {
  @override
  final Iterable<Type> types = const [
    GPRODUCTPAGINGData_productsPaging,
    _$GPRODUCTPAGINGData_productsPaging
  ];
  @override
  final String wireName = 'GPRODUCTPAGINGData_productsPaging';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPRODUCTPAGINGData_productsPaging object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType:
              const FullType(GPRODUCTPAGINGData_productsPaging_pageInfo)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GPRODUCTPAGINGData_productsPaging_edges)
            ])));
    }
    return result;
  }

  @override
  GPRODUCTPAGINGData_productsPaging deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPRODUCTPAGINGData_productsPagingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPRODUCTPAGINGData_productsPaging_pageInfo))!
              as GPRODUCTPAGINGData_productsPaging_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GPRODUCTPAGINGData_productsPaging_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPRODUCTPAGINGData_productsPaging_pageInfoSerializer
    implements
        StructuredSerializer<GPRODUCTPAGINGData_productsPaging_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GPRODUCTPAGINGData_productsPaging_pageInfo,
    _$GPRODUCTPAGINGData_productsPaging_pageInfo
  ];
  @override
  final String wireName = 'GPRODUCTPAGINGData_productsPaging_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPRODUCTPAGINGData_productsPaging_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.startCursor;
    if (value != null) {
      result
        ..add('startCursor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endCursor;
    if (value != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPRODUCTPAGINGData_productsPaging_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPRODUCTPAGINGData_productsPaging_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'startCursor':
          result.startCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPRODUCTPAGINGData_productsPaging_edgesSerializer
    implements StructuredSerializer<GPRODUCTPAGINGData_productsPaging_edges> {
  @override
  final Iterable<Type> types = const [
    GPRODUCTPAGINGData_productsPaging_edges,
    _$GPRODUCTPAGINGData_productsPaging_edges
  ];
  @override
  final String wireName = 'GPRODUCTPAGINGData_productsPaging_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPRODUCTPAGINGData_productsPaging_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'node',
      serializers.serialize(object.node,
          specifiedType:
              const FullType(GPRODUCTPAGINGData_productsPaging_edges_node)),
    ];

    return result;
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPRODUCTPAGINGData_productsPaging_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPRODUCTPAGINGData_productsPaging_edges_node))!
              as GPRODUCTPAGINGData_productsPaging_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GPRODUCTPAGINGData_productsPaging_edges_nodeSerializer
    implements
        StructuredSerializer<GPRODUCTPAGINGData_productsPaging_edges_node> {
  @override
  final Iterable<Type> types = const [
    GPRODUCTPAGINGData_productsPaging_edges_node,
    _$GPRODUCTPAGINGData_productsPaging_edges_node
  ];
  @override
  final String wireName = 'GPRODUCTPAGINGData_productsPaging_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPRODUCTPAGINGData_productsPaging_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'pricesByProductId',
      serializers.serialize(object.pricesByProductId,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId)
          ])),
    ];

    return result;
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pricesByProductId':
          result.pricesByProductId.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdSerializer
    implements
        StructuredSerializer<
            GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId> {
  @override
  final Iterable<Type> types = const [
    GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId,
    _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId
  ];
  @override
  final String wireName =
      'GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(_i2.GDecimal)),
    ];

    return result;
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
      }
    }

    return result.build();
  }
}

class _$GPRODUCTPAGINGData extends GPRODUCTPAGINGData {
  @override
  final String G__typename;
  @override
  final GPRODUCTPAGINGData_productsPaging? productsPaging;

  factory _$GPRODUCTPAGINGData(
          [void Function(GPRODUCTPAGINGDataBuilder)? updates]) =>
      (new GPRODUCTPAGINGDataBuilder()..update(updates))._build();

  _$GPRODUCTPAGINGData._({required this.G__typename, this.productsPaging})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPRODUCTPAGINGData', 'G__typename');
  }

  @override
  GPRODUCTPAGINGData rebuild(
          void Function(GPRODUCTPAGINGDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGDataBuilder toBuilder() =>
      new GPRODUCTPAGINGDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPRODUCTPAGINGData &&
        G__typename == other.G__typename &&
        productsPaging == other.productsPaging;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), productsPaging.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPRODUCTPAGINGData')
          ..add('G__typename', G__typename)
          ..add('productsPaging', productsPaging))
        .toString();
  }
}

class GPRODUCTPAGINGDataBuilder
    implements Builder<GPRODUCTPAGINGData, GPRODUCTPAGINGDataBuilder> {
  _$GPRODUCTPAGINGData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPRODUCTPAGINGData_productsPagingBuilder? _productsPaging;
  GPRODUCTPAGINGData_productsPagingBuilder get productsPaging =>
      _$this._productsPaging ??= new GPRODUCTPAGINGData_productsPagingBuilder();
  set productsPaging(
          GPRODUCTPAGINGData_productsPagingBuilder? productsPaging) =>
      _$this._productsPaging = productsPaging;

  GPRODUCTPAGINGDataBuilder() {
    GPRODUCTPAGINGData._initializeBuilder(this);
  }

  GPRODUCTPAGINGDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _productsPaging = $v.productsPaging?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPRODUCTPAGINGData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPRODUCTPAGINGData;
  }

  @override
  void update(void Function(GPRODUCTPAGINGDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGData build() => _build();

  _$GPRODUCTPAGINGData _build() {
    _$GPRODUCTPAGINGData _$result;
    try {
      _$result = _$v ??
          new _$GPRODUCTPAGINGData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPRODUCTPAGINGData', 'G__typename'),
              productsPaging: _productsPaging?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productsPaging';
        _productsPaging?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPRODUCTPAGINGData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPRODUCTPAGINGData_productsPaging
    extends GPRODUCTPAGINGData_productsPaging {
  @override
  final String G__typename;
  @override
  final GPRODUCTPAGINGData_productsPaging_pageInfo pageInfo;
  @override
  final BuiltList<GPRODUCTPAGINGData_productsPaging_edges>? edges;

  factory _$GPRODUCTPAGINGData_productsPaging(
          [void Function(GPRODUCTPAGINGData_productsPagingBuilder)? updates]) =>
      (new GPRODUCTPAGINGData_productsPagingBuilder()..update(updates))
          ._build();

  _$GPRODUCTPAGINGData_productsPaging._(
      {required this.G__typename, required this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPRODUCTPAGINGData_productsPaging', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, r'GPRODUCTPAGINGData_productsPaging', 'pageInfo');
  }

  @override
  GPRODUCTPAGINGData_productsPaging rebuild(
          void Function(GPRODUCTPAGINGData_productsPagingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGData_productsPagingBuilder toBuilder() =>
      new GPRODUCTPAGINGData_productsPagingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPRODUCTPAGINGData_productsPaging &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), pageInfo.hashCode), edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPRODUCTPAGINGData_productsPaging')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GPRODUCTPAGINGData_productsPagingBuilder
    implements
        Builder<GPRODUCTPAGINGData_productsPaging,
            GPRODUCTPAGINGData_productsPagingBuilder> {
  _$GPRODUCTPAGINGData_productsPaging? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPRODUCTPAGINGData_productsPaging_pageInfoBuilder? _pageInfo;
  GPRODUCTPAGINGData_productsPaging_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GPRODUCTPAGINGData_productsPaging_pageInfoBuilder();
  set pageInfo(GPRODUCTPAGINGData_productsPaging_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GPRODUCTPAGINGData_productsPaging_edges>? _edges;
  ListBuilder<GPRODUCTPAGINGData_productsPaging_edges> get edges =>
      _$this._edges ??=
          new ListBuilder<GPRODUCTPAGINGData_productsPaging_edges>();
  set edges(ListBuilder<GPRODUCTPAGINGData_productsPaging_edges>? edges) =>
      _$this._edges = edges;

  GPRODUCTPAGINGData_productsPagingBuilder() {
    GPRODUCTPAGINGData_productsPaging._initializeBuilder(this);
  }

  GPRODUCTPAGINGData_productsPagingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo.toBuilder();
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPRODUCTPAGINGData_productsPaging other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPRODUCTPAGINGData_productsPaging;
  }

  @override
  void update(
      void Function(GPRODUCTPAGINGData_productsPagingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGData_productsPaging build() => _build();

  _$GPRODUCTPAGINGData_productsPaging _build() {
    _$GPRODUCTPAGINGData_productsPaging _$result;
    try {
      _$result = _$v ??
          new _$GPRODUCTPAGINGData_productsPaging._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPRODUCTPAGINGData_productsPaging', 'G__typename'),
              pageInfo: pageInfo.build(),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        pageInfo.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPRODUCTPAGINGData_productsPaging', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPRODUCTPAGINGData_productsPaging_pageInfo
    extends GPRODUCTPAGINGData_productsPaging_pageInfo {
  @override
  final String G__typename;
  @override
  final bool hasNextPage;
  @override
  final String? startCursor;
  @override
  final String? endCursor;

  factory _$GPRODUCTPAGINGData_productsPaging_pageInfo(
          [void Function(GPRODUCTPAGINGData_productsPaging_pageInfoBuilder)?
              updates]) =>
      (new GPRODUCTPAGINGData_productsPaging_pageInfoBuilder()..update(updates))
          ._build();

  _$GPRODUCTPAGINGData_productsPaging_pageInfo._(
      {required this.G__typename,
      required this.hasNextPage,
      this.startCursor,
      this.endCursor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GPRODUCTPAGINGData_productsPaging_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(hasNextPage,
        r'GPRODUCTPAGINGData_productsPaging_pageInfo', 'hasNextPage');
  }

  @override
  GPRODUCTPAGINGData_productsPaging_pageInfo rebuild(
          void Function(GPRODUCTPAGINGData_productsPaging_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGData_productsPaging_pageInfoBuilder toBuilder() =>
      new GPRODUCTPAGINGData_productsPaging_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPRODUCTPAGINGData_productsPaging_pageInfo &&
        G__typename == other.G__typename &&
        hasNextPage == other.hasNextPage &&
        startCursor == other.startCursor &&
        endCursor == other.endCursor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), hasNextPage.hashCode),
            startCursor.hashCode),
        endCursor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPRODUCTPAGINGData_productsPaging_pageInfo')
          ..add('G__typename', G__typename)
          ..add('hasNextPage', hasNextPage)
          ..add('startCursor', startCursor)
          ..add('endCursor', endCursor))
        .toString();
  }
}

class GPRODUCTPAGINGData_productsPaging_pageInfoBuilder
    implements
        Builder<GPRODUCTPAGINGData_productsPaging_pageInfo,
            GPRODUCTPAGINGData_productsPaging_pageInfoBuilder> {
  _$GPRODUCTPAGINGData_productsPaging_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  String? _startCursor;
  String? get startCursor => _$this._startCursor;
  set startCursor(String? startCursor) => _$this._startCursor = startCursor;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  GPRODUCTPAGINGData_productsPaging_pageInfoBuilder() {
    GPRODUCTPAGINGData_productsPaging_pageInfo._initializeBuilder(this);
  }

  GPRODUCTPAGINGData_productsPaging_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hasNextPage = $v.hasNextPage;
      _startCursor = $v.startCursor;
      _endCursor = $v.endCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPRODUCTPAGINGData_productsPaging_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPRODUCTPAGINGData_productsPaging_pageInfo;
  }

  @override
  void update(
      void Function(GPRODUCTPAGINGData_productsPaging_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGData_productsPaging_pageInfo build() => _build();

  _$GPRODUCTPAGINGData_productsPaging_pageInfo _build() {
    final _$result = _$v ??
        new _$GPRODUCTPAGINGData_productsPaging_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GPRODUCTPAGINGData_productsPaging_pageInfo', 'G__typename'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(hasNextPage,
                r'GPRODUCTPAGINGData_productsPaging_pageInfo', 'hasNextPage'),
            startCursor: startCursor,
            endCursor: endCursor);
    replace(_$result);
    return _$result;
  }
}

class _$GPRODUCTPAGINGData_productsPaging_edges
    extends GPRODUCTPAGINGData_productsPaging_edges {
  @override
  final String G__typename;
  @override
  final GPRODUCTPAGINGData_productsPaging_edges_node node;

  factory _$GPRODUCTPAGINGData_productsPaging_edges(
          [void Function(GPRODUCTPAGINGData_productsPaging_edgesBuilder)?
              updates]) =>
      (new GPRODUCTPAGINGData_productsPaging_edgesBuilder()..update(updates))
          ._build();

  _$GPRODUCTPAGINGData_productsPaging_edges._(
      {required this.G__typename, required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPRODUCTPAGINGData_productsPaging_edges', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        node, r'GPRODUCTPAGINGData_productsPaging_edges', 'node');
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges rebuild(
          void Function(GPRODUCTPAGINGData_productsPaging_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGData_productsPaging_edgesBuilder toBuilder() =>
      new GPRODUCTPAGINGData_productsPaging_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPRODUCTPAGINGData_productsPaging_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPRODUCTPAGINGData_productsPaging_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GPRODUCTPAGINGData_productsPaging_edgesBuilder
    implements
        Builder<GPRODUCTPAGINGData_productsPaging_edges,
            GPRODUCTPAGINGData_productsPaging_edgesBuilder> {
  _$GPRODUCTPAGINGData_productsPaging_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder? _node;
  GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder get node =>
      _$this._node ??=
          new GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder();
  set node(GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder? node) =>
      _$this._node = node;

  GPRODUCTPAGINGData_productsPaging_edgesBuilder() {
    GPRODUCTPAGINGData_productsPaging_edges._initializeBuilder(this);
  }

  GPRODUCTPAGINGData_productsPaging_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPRODUCTPAGINGData_productsPaging_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPRODUCTPAGINGData_productsPaging_edges;
  }

  @override
  void update(
      void Function(GPRODUCTPAGINGData_productsPaging_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges build() => _build();

  _$GPRODUCTPAGINGData_productsPaging_edges _build() {
    _$GPRODUCTPAGINGData_productsPaging_edges _$result;
    try {
      _$result = _$v ??
          new _$GPRODUCTPAGINGData_productsPaging_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GPRODUCTPAGINGData_productsPaging_edges', 'G__typename'),
              node: node.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPRODUCTPAGINGData_productsPaging_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPRODUCTPAGINGData_productsPaging_edges_node
    extends GPRODUCTPAGINGData_productsPaging_edges_node {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String description;
  @override
  final BuiltList<
          GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>
      pricesByProductId;

  factory _$GPRODUCTPAGINGData_productsPaging_edges_node(
          [void Function(GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder)?
              updates]) =>
      (new GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GPRODUCTPAGINGData_productsPaging_edges_node._(
      {required this.G__typename,
      required this.name,
      required this.description,
      required this.pricesByProductId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GPRODUCTPAGINGData_productsPaging_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPRODUCTPAGINGData_productsPaging_edges_node', 'name');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GPRODUCTPAGINGData_productsPaging_edges_node', 'description');
    BuiltValueNullFieldError.checkNotNull(pricesByProductId,
        r'GPRODUCTPAGINGData_productsPaging_edges_node', 'pricesByProductId');
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node rebuild(
          void Function(GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder toBuilder() =>
      new GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPRODUCTPAGINGData_productsPaging_edges_node &&
        G__typename == other.G__typename &&
        name == other.name &&
        description == other.description &&
        pricesByProductId == other.pricesByProductId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), name.hashCode),
            description.hashCode),
        pricesByProductId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPRODUCTPAGINGData_productsPaging_edges_node')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description', description)
          ..add('pricesByProductId', pricesByProductId))
        .toString();
  }
}

class GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder
    implements
        Builder<GPRODUCTPAGINGData_productsPaging_edges_node,
            GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder> {
  _$GPRODUCTPAGINGData_productsPaging_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>?
      _pricesByProductId;
  ListBuilder<GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>
      get pricesByProductId => _$this._pricesByProductId ??= new ListBuilder<
          GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>();
  set pricesByProductId(
          ListBuilder<
                  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>?
              pricesByProductId) =>
      _$this._pricesByProductId = pricesByProductId;

  GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder() {
    GPRODUCTPAGINGData_productsPaging_edges_node._initializeBuilder(this);
  }

  GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description = $v.description;
      _pricesByProductId = $v.pricesByProductId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPRODUCTPAGINGData_productsPaging_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPRODUCTPAGINGData_productsPaging_edges_node;
  }

  @override
  void update(
      void Function(GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node build() => _build();

  _$GPRODUCTPAGINGData_productsPaging_edges_node _build() {
    _$GPRODUCTPAGINGData_productsPaging_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GPRODUCTPAGINGData_productsPaging_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GPRODUCTPAGINGData_productsPaging_edges_node',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'GPRODUCTPAGINGData_productsPaging_edges_node', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description,
                  r'GPRODUCTPAGINGData_productsPaging_edges_node',
                  'description'),
              pricesByProductId: pricesByProductId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pricesByProductId';
        pricesByProductId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPRODUCTPAGINGData_productsPaging_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId
    extends GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId {
  @override
  final String G__typename;
  @override
  final _i2.GDecimal price;

  factory _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId(
          [void Function(
                  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder)?
              updates]) =>
      (new GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder()
            ..update(updates))
          ._build();

  _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId._(
      {required this.G__typename, required this.price})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        price,
        r'GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId',
        'price');
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId rebuild(
          void Function(
                  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder
      toBuilder() =>
          new GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId &&
        G__typename == other.G__typename &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId')
          ..add('G__typename', G__typename)
          ..add('price', price))
        .toString();
  }
}

class GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder
    implements
        Builder<GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId,
            GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder> {
  _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GDecimalBuilder? _price;
  _i2.GDecimalBuilder get price => _$this._price ??= new _i2.GDecimalBuilder();
  set price(_i2.GDecimalBuilder? price) => _$this._price = price;

  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder() {
    GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId
        ._initializeBuilder(this);
  }

  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _price = $v.price.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId;
  }

  @override
  void update(
      void Function(
              GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId build() =>
      _build();

  _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId _build() {
    _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId _$result;
    try {
      _$result = _$v ??
          new _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId',
                  'G__typename'),
              price: price.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'price';
        price.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
