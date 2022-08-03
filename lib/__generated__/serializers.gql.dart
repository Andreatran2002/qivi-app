import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:qivi_app/__generated__/schema.schema.gql.dart'
    show
        GBillFilterInput,
        GBillInput,
        GBillSortInput,
        GBooleanOperationFilterInput,
        GCartItemInput,
        GComparableDateTimeOperationFilterInput,
        GComparableDecimalOperationFilterInput,
        GDateTime,
        GDecimal,
        GDiscountInput,
        GOrderDetailsInput,
        GOrderItemInput,
        GShoppingSessionInput,
        GSortEnumType,
        GStringOperationFilterInput,
        GUserFilterInput,
        GUserInput,
        GUserOrderInfoInput;
import 'package:qivi_app/src/data_schema/graphql/__generated__/product_paging.data.gql.dart'
    show
        GPRODUCTPAGINGData,
        GPRODUCTPAGINGData_productsPaging,
        GPRODUCTPAGINGData_productsPaging_edges,
        GPRODUCTPAGINGData_productsPaging_edges_node,
        GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId,
        GPRODUCTPAGINGData_productsPaging_pageInfo;
import 'package:qivi_app/src/data_schema/graphql/__generated__/product_paging.var.gql.dart'
    show GPRODUCTPAGINGVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GBillFilterInput,
  GBillInput,
  GBillSortInput,
  GBooleanOperationFilterInput,
  GCartItemInput,
  GComparableDateTimeOperationFilterInput,
  GComparableDecimalOperationFilterInput,
  GDateTime,
  GDecimal,
  GDiscountInput,
  GOrderDetailsInput,
  GOrderItemInput,
  GPRODUCTPAGINGData,
  GPRODUCTPAGINGData_productsPaging,
  GPRODUCTPAGINGData_productsPaging_edges,
  GPRODUCTPAGINGData_productsPaging_edges_node,
  GPRODUCTPAGINGData_productsPaging_edges_node_pricesByProductId,
  GPRODUCTPAGINGData_productsPaging_pageInfo,
  GPRODUCTPAGINGVars,
  GShoppingSessionInput,
  GSortEnumType,
  GStringOperationFilterInput,
  GUserFilterInput,
  GUserInput,
  GUserOrderInfoInput
])
final Serializers serializers = _serializersBuilder.build();
