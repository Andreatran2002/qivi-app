// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:qivi_app/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GBillFilterInput
    implements Built<GBillFilterInput, GBillFilterInputBuilder> {
  GBillFilterInput._();

  factory GBillFilterInput([Function(GBillFilterInputBuilder b) updates]) =
      _$GBillFilterInput;

  BuiltList<GBillFilterInput>? get and;
  BuiltList<GBillFilterInput>? get or;
  GStringOperationFilterInput? get id;
  GStringOperationFilterInput? get customerId;
  GComparableDecimalOperationFilterInput? get total;
  GBooleanOperationFilterInput? get isSuccess;
  GComparableDecimalOperationFilterInput? get amountOwed;
  GComparableDateTimeOperationFilterInput? get created;
  GComparableDateTimeOperationFilterInput? get lastUpdated;
  GStringOperationFilterInput? get note;
  GStringOperationFilterInput? get invoice;
  static Serializer<GBillFilterInput> get serializer =>
      _$gBillFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GBillFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GBillFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GBillFilterInput.serializer, json);
}

abstract class GBillInput implements Built<GBillInput, GBillInputBuilder> {
  GBillInput._();

  factory GBillInput([Function(GBillInputBuilder b) updates]) = _$GBillInput;

  String get id;
  String get customerId;
  GDecimal get total;
  bool get isSuccess;
  GDecimal get amountOwed;
  GDateTime get created;
  GDateTime get lastUpdated;
  String get note;
  String get invoice;
  static Serializer<GBillInput> get serializer => _$gBillInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GBillInput.serializer, this)
          as Map<String, dynamic>);
  static GBillInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GBillInput.serializer, json);
}

abstract class GBillSortInput
    implements Built<GBillSortInput, GBillSortInputBuilder> {
  GBillSortInput._();

  factory GBillSortInput([Function(GBillSortInputBuilder b) updates]) =
      _$GBillSortInput;

  GSortEnumType? get created;
  static Serializer<GBillSortInput> get serializer =>
      _$gBillSortInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GBillSortInput.serializer, this)
          as Map<String, dynamic>);
  static GBillSortInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GBillSortInput.serializer, json);
}

abstract class GBooleanOperationFilterInput
    implements
        Built<GBooleanOperationFilterInput,
            GBooleanOperationFilterInputBuilder> {
  GBooleanOperationFilterInput._();

  factory GBooleanOperationFilterInput(
          [Function(GBooleanOperationFilterInputBuilder b) updates]) =
      _$GBooleanOperationFilterInput;

  bool? get eq;
  bool? get neq;
  static Serializer<GBooleanOperationFilterInput> get serializer =>
      _$gBooleanOperationFilterInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GBooleanOperationFilterInput.serializer, this) as Map<String, dynamic>);
  static GBooleanOperationFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GBooleanOperationFilterInput.serializer, json);
}

abstract class GCartItemInput
    implements Built<GCartItemInput, GCartItemInputBuilder> {
  GCartItemInput._();

  factory GCartItemInput([Function(GCartItemInputBuilder b) updates]) =
      _$GCartItemInput;

  String get id;
  String get sessionId;
  String get priceId;
  int get quantity;
  GDateTime get createdAt;
  GDateTime get modifiedAt;
  static Serializer<GCartItemInput> get serializer =>
      _$gCartItemInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCartItemInput.serializer, this)
          as Map<String, dynamic>);
  static GCartItemInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCartItemInput.serializer, json);
}

abstract class GComparableDateTimeOperationFilterInput
    implements
        Built<GComparableDateTimeOperationFilterInput,
            GComparableDateTimeOperationFilterInputBuilder> {
  GComparableDateTimeOperationFilterInput._();

  factory GComparableDateTimeOperationFilterInput(
      [Function(GComparableDateTimeOperationFilterInputBuilder b)
          updates]) = _$GComparableDateTimeOperationFilterInput;

  GDateTime? get eq;
  GDateTime? get neq;
  @BuiltValueField(wireName: 'in')
  BuiltList<GDateTime>? get Gin;
  BuiltList<GDateTime>? get nin;
  GDateTime? get gt;
  GDateTime? get ngt;
  GDateTime? get gte;
  GDateTime? get ngte;
  GDateTime? get lt;
  GDateTime? get nlt;
  GDateTime? get lte;
  GDateTime? get nlte;
  static Serializer<GComparableDateTimeOperationFilterInput> get serializer =>
      _$gComparableDateTimeOperationFilterInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GComparableDateTimeOperationFilterInput.serializer, this)
      as Map<String, dynamic>);
  static GComparableDateTimeOperationFilterInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GComparableDateTimeOperationFilterInput.serializer, json);
}

abstract class GComparableDecimalOperationFilterInput
    implements
        Built<GComparableDecimalOperationFilterInput,
            GComparableDecimalOperationFilterInputBuilder> {
  GComparableDecimalOperationFilterInput._();

  factory GComparableDecimalOperationFilterInput(
          [Function(GComparableDecimalOperationFilterInputBuilder b) updates]) =
      _$GComparableDecimalOperationFilterInput;

  GDecimal? get eq;
  GDecimal? get neq;
  @BuiltValueField(wireName: 'in')
  BuiltList<GDecimal>? get Gin;
  BuiltList<GDecimal>? get nin;
  GDecimal? get gt;
  GDecimal? get ngt;
  GDecimal? get gte;
  GDecimal? get ngte;
  GDecimal? get lt;
  GDecimal? get nlt;
  GDecimal? get lte;
  GDecimal? get nlte;
  static Serializer<GComparableDecimalOperationFilterInput> get serializer =>
      _$gComparableDecimalOperationFilterInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GComparableDecimalOperationFilterInput.serializer, this)
      as Map<String, dynamic>);
  static GComparableDecimalOperationFilterInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GComparableDecimalOperationFilterInput.serializer, json);
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GDecimal implements Built<GDecimal, GDecimalBuilder> {
  GDecimal._();

  factory GDecimal([String? value]) =>
      _$GDecimal((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDecimal> get serializer =>
      _i2.DefaultScalarSerializer<GDecimal>(
          (Object serialized) => GDecimal((serialized as String?)));
}

abstract class GDiscountInput
    implements Built<GDiscountInput, GDiscountInputBuilder> {
  GDiscountInput._();

  factory GDiscountInput([Function(GDiscountInputBuilder b) updates]) =
      _$GDiscountInput;

  String get name;
  String get description;
  int get discountPercent;
  bool get active;
  GDateTime get createdAt;
  GDateTime get modifiedAt;
  String get id;
  static Serializer<GDiscountInput> get serializer =>
      _$gDiscountInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDiscountInput.serializer, this)
          as Map<String, dynamic>);
  static GDiscountInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDiscountInput.serializer, json);
}

abstract class GOrderDetailsInput
    implements Built<GOrderDetailsInput, GOrderDetailsInputBuilder> {
  GOrderDetailsInput._();

  factory GOrderDetailsInput([Function(GOrderDetailsInputBuilder b) updates]) =
      _$GOrderDetailsInput;

  String get id;
  String get status;
  String get userId;
  GDecimal get total;
  GDateTime get createdAt;
  GDateTime get modifiedAt;
  static Serializer<GOrderDetailsInput> get serializer =>
      _$gOrderDetailsInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GOrderDetailsInput.serializer, this)
          as Map<String, dynamic>);
  static GOrderDetailsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GOrderDetailsInput.serializer, json);
}

abstract class GOrderItemInput
    implements Built<GOrderItemInput, GOrderItemInputBuilder> {
  GOrderItemInput._();

  factory GOrderItemInput([Function(GOrderItemInputBuilder b) updates]) =
      _$GOrderItemInput;

  String get id;
  String get orderId;
  String get priceId;
  int get quantity;
  GDateTime get createdAt;
  GDateTime get modifiedAt;
  static Serializer<GOrderItemInput> get serializer =>
      _$gOrderItemInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GOrderItemInput.serializer, this)
          as Map<String, dynamic>);
  static GOrderItemInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GOrderItemInput.serializer, json);
}

abstract class GShoppingSessionInput
    implements Built<GShoppingSessionInput, GShoppingSessionInputBuilder> {
  GShoppingSessionInput._();

  factory GShoppingSessionInput(
          [Function(GShoppingSessionInputBuilder b) updates]) =
      _$GShoppingSessionInput;

  String get id;
  String get userId;
  GDecimal get total;
  GDateTime get createdAt;
  GDateTime get modifiedAt;
  static Serializer<GShoppingSessionInput> get serializer =>
      _$gShoppingSessionInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GShoppingSessionInput.serializer, this)
          as Map<String, dynamic>);
  static GShoppingSessionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GShoppingSessionInput.serializer, json);
}

class GSortEnumType extends EnumClass {
  const GSortEnumType._(String name) : super(name);

  static const GSortEnumType ASC = _$gSortEnumTypeASC;

  static const GSortEnumType DESC = _$gSortEnumTypeDESC;

  static Serializer<GSortEnumType> get serializer => _$gSortEnumTypeSerializer;
  static BuiltSet<GSortEnumType> get values => _$gSortEnumTypeValues;
  static GSortEnumType valueOf(String name) => _$gSortEnumTypeValueOf(name);
}

abstract class GStringOperationFilterInput
    implements
        Built<GStringOperationFilterInput, GStringOperationFilterInputBuilder> {
  GStringOperationFilterInput._();

  factory GStringOperationFilterInput(
          [Function(GStringOperationFilterInputBuilder b) updates]) =
      _$GStringOperationFilterInput;

  BuiltList<GStringOperationFilterInput>? get and;
  BuiltList<GStringOperationFilterInput>? get or;
  String? get eq;
  String? get neq;
  String? get contains;
  String? get ncontains;
  @BuiltValueField(wireName: 'in')
  BuiltList<String>? get Gin;
  BuiltList<String>? get nin;
  String? get startsWith;
  String? get nstartsWith;
  String? get endsWith;
  String? get nendsWith;
  static Serializer<GStringOperationFilterInput> get serializer =>
      _$gStringOperationFilterInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GStringOperationFilterInput.serializer, this) as Map<String, dynamic>);
  static GStringOperationFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GStringOperationFilterInput.serializer, json);
}

abstract class GUserFilterInput
    implements Built<GUserFilterInput, GUserFilterInputBuilder> {
  GUserFilterInput._();

  factory GUserFilterInput([Function(GUserFilterInputBuilder b) updates]) =
      _$GUserFilterInput;

  BuiltList<GUserFilterInput>? get and;
  BuiltList<GUserFilterInput>? get or;
  GStringOperationFilterInput? get id;
  GStringOperationFilterInput? get userName;
  GStringOperationFilterInput? get fullName;
  GStringOperationFilterInput? get phoneNumber;
  GStringOperationFilterInput? get address;
  static Serializer<GUserFilterInput> get serializer =>
      _$gUserFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GUserFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserFilterInput.serializer, json);
}

abstract class GUserInput implements Built<GUserInput, GUserInputBuilder> {
  GUserInput._();

  factory GUserInput([Function(GUserInputBuilder b) updates]) = _$GUserInput;

  String get id;
  String get userName;
  String get fullName;
  String get phoneNumber;
  String get address;
  static Serializer<GUserInput> get serializer => _$gUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserInput.serializer, this)
          as Map<String, dynamic>);
  static GUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserInput.serializer, json);
}

abstract class GUserOrderInfoInput
    implements Built<GUserOrderInfoInput, GUserOrderInfoInputBuilder> {
  GUserOrderInfoInput._();

  factory GUserOrderInfoInput(
      [Function(GUserOrderInfoInputBuilder b) updates]) = _$GUserOrderInfoInput;

  String get userId;
  String get recipient;
  String get phoneNumber;
  String get address;
  String get id;
  static Serializer<GUserOrderInfoInput> get serializer =>
      _$gUserOrderInfoInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserOrderInfoInput.serializer, this)
          as Map<String, dynamic>);
  static GUserOrderInfoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserOrderInfoInput.serializer, json);
}
