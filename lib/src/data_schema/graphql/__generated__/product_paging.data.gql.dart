// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:qivi_app/__generated__/schema.schema.gql.dart' as _i2;
import 'package:qivi_app/__generated__/serializers.gql.dart' as _i1;

part 'product_paging.data.gql.g.dart';

abstract class GPRODUCTPAGINGData
    implements Built<GPRODUCTPAGINGData, GPRODUCTPAGINGDataBuilder> {
  GPRODUCTPAGINGData._();

  factory GPRODUCTPAGINGData([Function(GPRODUCTPAGINGDataBuilder b) updates]) =
      _$GPRODUCTPAGINGData;

  static void _initializeBuilder(GPRODUCTPAGINGDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPRODUCTPAGINGData_productsPaging? get productsPaging;
  static Serializer<GPRODUCTPAGINGData> get serializer =>
      _$gPRODUCTPAGINGDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPRODUCTPAGINGData.serializer, this)
          as Map<String, dynamic>);
  static GPRODUCTPAGINGData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPRODUCTPAGINGData.serializer, json);
}

abstract class GPRODUCTPAGINGData_productsPaging
    implements
        Built<GPRODUCTPAGINGData_productsPaging,
            GPRODUCTPAGINGData_productsPagingBuilder> {
  GPRODUCTPAGINGData_productsPaging._();

  factory GPRODUCTPAGINGData_productsPaging(
          [Function(GPRODUCTPAGINGData_productsPagingBuilder b) updates]) =
      _$GPRODUCTPAGINGData_productsPaging;

  static void _initializeBuilder(GPRODUCTPAGINGData_productsPagingBuilder b) =>
      b..G__typename = 'ProductsPagingConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPRODUCTPAGINGData_productsPaging_pageInfo get pageInfo;
  BuiltList<GPRODUCTPAGINGData_productsPaging_edges>? get edges;
  static Serializer<GPRODUCTPAGINGData_productsPaging> get serializer =>
      _$gPRODUCTPAGINGDataProductsPagingSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GPRODUCTPAGINGData_productsPaging.serializer, this)
      as Map<String, dynamic>);
  static GPRODUCTPAGINGData_productsPaging? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPRODUCTPAGINGData_productsPaging.serializer, json);
}

abstract class GPRODUCTPAGINGData_productsPaging_pageInfo
    implements
        Built<GPRODUCTPAGINGData_productsPaging_pageInfo,
            GPRODUCTPAGINGData_productsPaging_pageInfoBuilder> {
  GPRODUCTPAGINGData_productsPaging_pageInfo._();

  factory GPRODUCTPAGINGData_productsPaging_pageInfo(
      [Function(GPRODUCTPAGINGData_productsPaging_pageInfoBuilder b)
          updates]) = _$GPRODUCTPAGINGData_productsPaging_pageInfo;

  static void _initializeBuilder(
          GPRODUCTPAGINGData_productsPaging_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get hasNextPage;
  String? get startCursor;
  String? get endCursor;
  static Serializer<GPRODUCTPAGINGData_productsPaging_pageInfo>
      get serializer => _$gPRODUCTPAGINGDataProductsPagingPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPRODUCTPAGINGData_productsPaging_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GPRODUCTPAGINGData_productsPaging_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPRODUCTPAGINGData_productsPaging_pageInfo.serializer, json);
}

abstract class GPRODUCTPAGINGData_productsPaging_edges
    implements
        Built<GPRODUCTPAGINGData_productsPaging_edges,
            GPRODUCTPAGINGData_productsPaging_edgesBuilder> {
  GPRODUCTPAGINGData_productsPaging_edges._();

  factory GPRODUCTPAGINGData_productsPaging_edges(
      [Function(GPRODUCTPAGINGData_productsPaging_edgesBuilder b)
          updates]) = _$GPRODUCTPAGINGData_productsPaging_edges;

  static void _initializeBuilder(
          GPRODUCTPAGINGData_productsPaging_edgesBuilder b) =>
      b..G__typename = 'ProductsPagingEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPRODUCTPAGINGData_productsPaging_edges_node get node;
  static Serializer<GPRODUCTPAGINGData_productsPaging_edges> get serializer =>
      _$gPRODUCTPAGINGDataProductsPagingEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPRODUCTPAGINGData_productsPaging_edges.serializer, this)
      as Map<String, dynamic>);
  static GPRODUCTPAGINGData_productsPaging_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPRODUCTPAGINGData_productsPaging_edges.serializer, json);
}

abstract class GPRODUCTPAGINGData_productsPaging_edges_node
    implements
        Built<GPRODUCTPAGINGData_productsPaging_edges_node,
            GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder> {
  GPRODUCTPAGINGData_productsPaging_edges_node._();

  factory GPRODUCTPAGINGData_productsPaging_edges_node(
      [Function(GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder b)
          updates]) = _$GPRODUCTPAGINGData_productsPaging_edges_node;

  static void _initializeBuilder(
          GPRODUCTPAGINGData_productsPaging_edges_nodeBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get description;
  BuiltList<GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>
      get pricesByProductId;
  static Serializer<GPRODUCTPAGINGData_productsPaging_edges_node>
      get serializer => _$gPRODUCTPAGINGDataProductsPagingEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPRODUCTPAGINGData_productsPaging_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GPRODUCTPAGINGData_productsPaging_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPRODUCTPAGINGData_productsPaging_edges_node.serializer, json);
}

abstract class GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId
    implements
        Built<GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId,
            GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder> {
  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId._();

  factory GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId(
          [Function(
                  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder
                      b)
              updates]) =
      _$GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId;

  static void _initializeBuilder(
          GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductIdBuilder
              b) =>
      b..G__typename = 'ProductPrice';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GDecimal get price;
  static Serializer<
          GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId>
      get serializer =>
          _$gPRODUCTPAGINGDataProductsPagingEdgesNodePricesByProductIdSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId.serializer,
      this) as Map<String, dynamic>);
  static GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId
              .serializer,
          json);
}
