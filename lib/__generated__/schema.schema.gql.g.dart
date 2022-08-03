// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GSortEnumType _$gSortEnumTypeASC = const GSortEnumType._('ASC');
const GSortEnumType _$gSortEnumTypeDESC = const GSortEnumType._('DESC');

GSortEnumType _$gSortEnumTypeValueOf(String name) {
  switch (name) {
    case 'ASC':
      return _$gSortEnumTypeASC;
    case 'DESC':
      return _$gSortEnumTypeDESC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GSortEnumType> _$gSortEnumTypeValues =
    new BuiltSet<GSortEnumType>(const <GSortEnumType>[
  _$gSortEnumTypeASC,
  _$gSortEnumTypeDESC,
]);

Serializer<GBillFilterInput> _$gBillFilterInputSerializer =
    new _$GBillFilterInputSerializer();
Serializer<GBillInput> _$gBillInputSerializer = new _$GBillInputSerializer();
Serializer<GBillSortInput> _$gBillSortInputSerializer =
    new _$GBillSortInputSerializer();
Serializer<GBooleanOperationFilterInput>
    _$gBooleanOperationFilterInputSerializer =
    new _$GBooleanOperationFilterInputSerializer();
Serializer<GCartItemInput> _$gCartItemInputSerializer =
    new _$GCartItemInputSerializer();
Serializer<GComparableDateTimeOperationFilterInput>
    _$gComparableDateTimeOperationFilterInputSerializer =
    new _$GComparableDateTimeOperationFilterInputSerializer();
Serializer<GComparableDecimalOperationFilterInput>
    _$gComparableDecimalOperationFilterInputSerializer =
    new _$GComparableDecimalOperationFilterInputSerializer();
Serializer<GDiscountInput> _$gDiscountInputSerializer =
    new _$GDiscountInputSerializer();
Serializer<GOrderDetailsInput> _$gOrderDetailsInputSerializer =
    new _$GOrderDetailsInputSerializer();
Serializer<GOrderItemInput> _$gOrderItemInputSerializer =
    new _$GOrderItemInputSerializer();
Serializer<GShoppingSessionInput> _$gShoppingSessionInputSerializer =
    new _$GShoppingSessionInputSerializer();
Serializer<GSortEnumType> _$gSortEnumTypeSerializer =
    new _$GSortEnumTypeSerializer();
Serializer<GStringOperationFilterInput>
    _$gStringOperationFilterInputSerializer =
    new _$GStringOperationFilterInputSerializer();
Serializer<GUserFilterInput> _$gUserFilterInputSerializer =
    new _$GUserFilterInputSerializer();
Serializer<GUserInput> _$gUserInputSerializer = new _$GUserInputSerializer();
Serializer<GUserOrderInfoInput> _$gUserOrderInfoInputSerializer =
    new _$GUserOrderInfoInputSerializer();

class _$GBillFilterInputSerializer
    implements StructuredSerializer<GBillFilterInput> {
  @override
  final Iterable<Type> types = const [GBillFilterInput, _$GBillFilterInput];
  @override
  final String wireName = 'GBillFilterInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBillFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GBillFilterInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GBillFilterInput)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GComparableDecimalOperationFilterInput)));
    }
    value = object.isSuccess;
    if (value != null) {
      result
        ..add('isSuccess')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GBooleanOperationFilterInput)));
    }
    value = object.amountOwed;
    if (value != null) {
      result
        ..add('amountOwed')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GComparableDecimalOperationFilterInput)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GComparableDateTimeOperationFilterInput)));
    }
    value = object.lastUpdated;
    if (value != null) {
      result
        ..add('lastUpdated')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GComparableDateTimeOperationFilterInput)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.invoice;
    if (value != null) {
      result
        ..add('invoice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    return result;
  }

  @override
  GBillFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBillFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'and':
          result.and.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GBillFilterInput)]))!
              as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GBillFilterInput)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'customerId':
          result.customerId.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'total':
          result.total.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GComparableDecimalOperationFilterInput))!
              as GComparableDecimalOperationFilterInput);
          break;
        case 'isSuccess':
          result.isSuccess.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GBooleanOperationFilterInput))!
              as GBooleanOperationFilterInput);
          break;
        case 'amountOwed':
          result.amountOwed.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GComparableDecimalOperationFilterInput))!
              as GComparableDecimalOperationFilterInput);
          break;
        case 'created':
          result.created.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GComparableDateTimeOperationFilterInput))!
              as GComparableDateTimeOperationFilterInput);
          break;
        case 'lastUpdated':
          result.lastUpdated.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GComparableDateTimeOperationFilterInput))!
              as GComparableDateTimeOperationFilterInput);
          break;
        case 'note':
          result.note.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'invoice':
          result.invoice.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GBillInputSerializer implements StructuredSerializer<GBillInput> {
  @override
  final Iterable<Type> types = const [GBillInput, _$GBillInput];
  @override
  final String wireName = 'GBillInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBillInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'customerId',
      serializers.serialize(object.customerId,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(GDecimal)),
      'isSuccess',
      serializers.serialize(object.isSuccess,
          specifiedType: const FullType(bool)),
      'amountOwed',
      serializers.serialize(object.amountOwed,
          specifiedType: const FullType(GDecimal)),
      'created',
      serializers.serialize(object.created,
          specifiedType: const FullType(GDateTime)),
      'lastUpdated',
      serializers.serialize(object.lastUpdated,
          specifiedType: const FullType(GDateTime)),
      'note',
      serializers.serialize(object.note, specifiedType: const FullType(String)),
      'invoice',
      serializers.serialize(object.invoice,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GBillInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBillInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total':
          result.total.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'isSuccess':
          result.isSuccess = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'amountOwed':
          result.amountOwed.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'created':
          result.created.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'lastUpdated':
          result.lastUpdated.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'invoice':
          result.invoice = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GBillSortInputSerializer
    implements StructuredSerializer<GBillSortInput> {
  @override
  final Iterable<Type> types = const [GBillSortInput, _$GBillSortInput];
  @override
  final String wireName = 'GBillSortInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBillSortInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSortEnumType)));
    }
    return result;
  }

  @override
  GBillSortInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBillSortInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(GSortEnumType)) as GSortEnumType?;
          break;
      }
    }

    return result.build();
  }
}

class _$GBooleanOperationFilterInputSerializer
    implements StructuredSerializer<GBooleanOperationFilterInput> {
  @override
  final Iterable<Type> types = const [
    GBooleanOperationFilterInput,
    _$GBooleanOperationFilterInput
  ];
  @override
  final String wireName = 'GBooleanOperationFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBooleanOperationFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.neq;
    if (value != null) {
      result
        ..add('neq')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GBooleanOperationFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBooleanOperationFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'neq':
          result.neq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCartItemInputSerializer
    implements StructuredSerializer<GCartItemInput> {
  @override
  final Iterable<Type> types = const [GCartItemInput, _$GCartItemInput];
  @override
  final String wireName = 'GCartItemInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCartItemInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
      'priceId',
      serializers.serialize(object.priceId,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(GDateTime)),
      'modifiedAt',
      serializers.serialize(object.modifiedAt,
          specifiedType: const FullType(GDateTime)),
    ];

    return result;
  }

  @override
  GCartItemInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sessionId':
          result.sessionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priceId':
          result.priceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GComparableDateTimeOperationFilterInputSerializer
    implements StructuredSerializer<GComparableDateTimeOperationFilterInput> {
  @override
  final Iterable<Type> types = const [
    GComparableDateTimeOperationFilterInput,
    _$GComparableDateTimeOperationFilterInput
  ];
  @override
  final String wireName = 'GComparableDateTimeOperationFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GComparableDateTimeOperationFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.neq;
    if (value != null) {
      result
        ..add('neq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.Gin;
    if (value != null) {
      result
        ..add('in')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(GDateTime)])));
    }
    value = object.nin;
    if (value != null) {
      result
        ..add('nin')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(GDateTime)])));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.ngt;
    if (value != null) {
      result
        ..add('ngt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.gte;
    if (value != null) {
      result
        ..add('gte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.ngte;
    if (value != null) {
      result
        ..add('ngte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.nlt;
    if (value != null) {
      result
        ..add('nlt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.lte;
    if (value != null) {
      result
        ..add('lte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.nlte;
    if (value != null) {
      result
        ..add('nlte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    return result;
  }

  @override
  GComparableDateTimeOperationFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GComparableDateTimeOperationFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eq':
          result.eq.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'neq':
          result.neq.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'in':
          result.Gin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GDateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'nin':
          result.nin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GDateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'gt':
          result.gt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'ngt':
          result.ngt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'gte':
          result.gte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'ngte':
          result.ngte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'lt':
          result.lt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'nlt':
          result.nlt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'lte':
          result.lte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'nlte':
          result.nlte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GComparableDecimalOperationFilterInputSerializer
    implements StructuredSerializer<GComparableDecimalOperationFilterInput> {
  @override
  final Iterable<Type> types = const [
    GComparableDecimalOperationFilterInput,
    _$GComparableDecimalOperationFilterInput
  ];
  @override
  final String wireName = 'GComparableDecimalOperationFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GComparableDecimalOperationFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.neq;
    if (value != null) {
      result
        ..add('neq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.Gin;
    if (value != null) {
      result
        ..add('in')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(GDecimal)])));
    }
    value = object.nin;
    if (value != null) {
      result
        ..add('nin')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(GDecimal)])));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.ngt;
    if (value != null) {
      result
        ..add('ngt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.gte;
    if (value != null) {
      result
        ..add('gte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.ngte;
    if (value != null) {
      result
        ..add('ngte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.nlt;
    if (value != null) {
      result
        ..add('nlt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.lte;
    if (value != null) {
      result
        ..add('lte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    value = object.nlte;
    if (value != null) {
      result
        ..add('nlte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDecimal)));
    }
    return result;
  }

  @override
  GComparableDecimalOperationFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GComparableDecimalOperationFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eq':
          result.eq.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'neq':
          result.neq.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'in':
          result.Gin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GDecimal)]))!
              as BuiltList<Object?>);
          break;
        case 'nin':
          result.nin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GDecimal)]))!
              as BuiltList<Object?>);
          break;
        case 'gt':
          result.gt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'ngt':
          result.ngt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'gte':
          result.gte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'ngte':
          result.ngte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'lt':
          result.lt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'nlt':
          result.nlt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'lte':
          result.lte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'nlte':
          result.nlte.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
      }
    }

    return result.build();
  }
}

class _$GDiscountInputSerializer
    implements StructuredSerializer<GDiscountInput> {
  @override
  final Iterable<Type> types = const [GDiscountInput, _$GDiscountInput];
  @override
  final String wireName = 'GDiscountInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDiscountInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'discountPercent',
      serializers.serialize(object.discountPercent,
          specifiedType: const FullType(int)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(GDateTime)),
      'modifiedAt',
      serializers.serialize(object.modifiedAt,
          specifiedType: const FullType(GDateTime)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDiscountInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDiscountInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'discountPercent':
          result.discountPercent = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GOrderDetailsInputSerializer
    implements StructuredSerializer<GOrderDetailsInput> {
  @override
  final Iterable<Type> types = const [GOrderDetailsInput, _$GOrderDetailsInput];
  @override
  final String wireName = 'GOrderDetailsInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOrderDetailsInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(GDecimal)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(GDateTime)),
      'modifiedAt',
      serializers.serialize(object.modifiedAt,
          specifiedType: const FullType(GDateTime)),
    ];

    return result;
  }

  @override
  GOrderDetailsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOrderDetailsInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total':
          result.total.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GOrderItemInputSerializer
    implements StructuredSerializer<GOrderItemInput> {
  @override
  final Iterable<Type> types = const [GOrderItemInput, _$GOrderItemInput];
  @override
  final String wireName = 'GOrderItemInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GOrderItemInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'orderId',
      serializers.serialize(object.orderId,
          specifiedType: const FullType(String)),
      'priceId',
      serializers.serialize(object.priceId,
          specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(GDateTime)),
      'modifiedAt',
      serializers.serialize(object.modifiedAt,
          specifiedType: const FullType(GDateTime)),
    ];

    return result;
  }

  @override
  GOrderItemInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOrderItemInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priceId':
          result.priceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GShoppingSessionInputSerializer
    implements StructuredSerializer<GShoppingSessionInput> {
  @override
  final Iterable<Type> types = const [
    GShoppingSessionInput,
    _$GShoppingSessionInput
  ];
  @override
  final String wireName = 'GShoppingSessionInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GShoppingSessionInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(GDecimal)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(GDateTime)),
      'modifiedAt',
      serializers.serialize(object.modifiedAt,
          specifiedType: const FullType(GDateTime)),
    ];

    return result;
  }

  @override
  GShoppingSessionInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GShoppingSessionInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total':
          result.total.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'modifiedAt':
          result.modifiedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GSortEnumTypeSerializer implements PrimitiveSerializer<GSortEnumType> {
  @override
  final Iterable<Type> types = const <Type>[GSortEnumType];
  @override
  final String wireName = 'GSortEnumType';

  @override
  Object serialize(Serializers serializers, GSortEnumType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GSortEnumType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GSortEnumType.valueOf(serialized as String);
}

class _$GStringOperationFilterInputSerializer
    implements StructuredSerializer<GStringOperationFilterInput> {
  @override
  final Iterable<Type> types = const [
    GStringOperationFilterInput,
    _$GStringOperationFilterInput
  ];
  @override
  final String wireName = 'GStringOperationFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStringOperationFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GStringOperationFilterInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GStringOperationFilterInput)])));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.neq;
    if (value != null) {
      result
        ..add('neq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ncontains;
    if (value != null) {
      result
        ..add('ncontains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.Gin;
    if (value != null) {
      result
        ..add('in')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.nin;
    if (value != null) {
      result
        ..add('nin')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.startsWith;
    if (value != null) {
      result
        ..add('startsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nstartsWith;
    if (value != null) {
      result
        ..add('nstartsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endsWith;
    if (value != null) {
      result
        ..add('endsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nendsWith;
    if (value != null) {
      result
        ..add('nendsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStringOperationFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStringOperationFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'and':
          result.and.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GStringOperationFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GStringOperationFilterInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'neq':
          result.neq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ncontains':
          result.ncontains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'in':
          result.Gin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'nin':
          result.nin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'startsWith':
          result.startsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nstartsWith':
          result.nstartsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endsWith':
          result.endsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nendsWith':
          result.nendsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserFilterInputSerializer
    implements StructuredSerializer<GUserFilterInput> {
  @override
  final Iterable<Type> types = const [GUserFilterInput, _$GUserFilterInput];
  @override
  final String wireName = 'GUserFilterInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.and;
    if (value != null) {
      result
        ..add('and')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GUserFilterInput)])));
    }
    value = object.or;
    if (value != null) {
      result
        ..add('or')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GUserFilterInput)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStringOperationFilterInput)));
    }
    return result;
  }

  @override
  GUserFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'and':
          result.and.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GUserFilterInput)]))!
              as BuiltList<Object?>);
          break;
        case 'or':
          result.or.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GUserFilterInput)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'userName':
          result.userName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'fullName':
          result.fullName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'phoneNumber':
          result.phoneNumber.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStringOperationFilterInput))!
              as GStringOperationFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserInputSerializer implements StructuredSerializer<GUserInput> {
  @override
  final Iterable<Type> types = const [GUserInput, _$GUserInput];
  @override
  final String wireName = 'GUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserOrderInfoInputSerializer
    implements StructuredSerializer<GUserOrderInfoInput> {
  @override
  final Iterable<Type> types = const [
    GUserOrderInfoInput,
    _$GUserOrderInfoInput
  ];
  @override
  final String wireName = 'GUserOrderInfoInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserOrderInfoInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'recipient',
      serializers.serialize(object.recipient,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserOrderInfoInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserOrderInfoInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'recipient':
          result.recipient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GBillFilterInput extends GBillFilterInput {
  @override
  final BuiltList<GBillFilterInput>? and;
  @override
  final BuiltList<GBillFilterInput>? or;
  @override
  final GStringOperationFilterInput? id;
  @override
  final GStringOperationFilterInput? customerId;
  @override
  final GComparableDecimalOperationFilterInput? total;
  @override
  final GBooleanOperationFilterInput? isSuccess;
  @override
  final GComparableDecimalOperationFilterInput? amountOwed;
  @override
  final GComparableDateTimeOperationFilterInput? created;
  @override
  final GComparableDateTimeOperationFilterInput? lastUpdated;
  @override
  final GStringOperationFilterInput? note;
  @override
  final GStringOperationFilterInput? invoice;

  factory _$GBillFilterInput(
          [void Function(GBillFilterInputBuilder)? updates]) =>
      (new GBillFilterInputBuilder()..update(updates))._build();

  _$GBillFilterInput._(
      {this.and,
      this.or,
      this.id,
      this.customerId,
      this.total,
      this.isSuccess,
      this.amountOwed,
      this.created,
      this.lastUpdated,
      this.note,
      this.invoice})
      : super._();

  @override
  GBillFilterInput rebuild(void Function(GBillFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBillFilterInputBuilder toBuilder() =>
      new GBillFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBillFilterInput &&
        and == other.and &&
        or == other.or &&
        id == other.id &&
        customerId == other.customerId &&
        total == other.total &&
        isSuccess == other.isSuccess &&
        amountOwed == other.amountOwed &&
        created == other.created &&
        lastUpdated == other.lastUpdated &&
        note == other.note &&
        invoice == other.invoice;
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
                                    $jc($jc($jc(0, and.hashCode), or.hashCode),
                                        id.hashCode),
                                    customerId.hashCode),
                                total.hashCode),
                            isSuccess.hashCode),
                        amountOwed.hashCode),
                    created.hashCode),
                lastUpdated.hashCode),
            note.hashCode),
        invoice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBillFilterInput')
          ..add('and', and)
          ..add('or', or)
          ..add('id', id)
          ..add('customerId', customerId)
          ..add('total', total)
          ..add('isSuccess', isSuccess)
          ..add('amountOwed', amountOwed)
          ..add('created', created)
          ..add('lastUpdated', lastUpdated)
          ..add('note', note)
          ..add('invoice', invoice))
        .toString();
  }
}

class GBillFilterInputBuilder
    implements Builder<GBillFilterInput, GBillFilterInputBuilder> {
  _$GBillFilterInput? _$v;

  ListBuilder<GBillFilterInput>? _and;
  ListBuilder<GBillFilterInput> get and =>
      _$this._and ??= new ListBuilder<GBillFilterInput>();
  set and(ListBuilder<GBillFilterInput>? and) => _$this._and = and;

  ListBuilder<GBillFilterInput>? _or;
  ListBuilder<GBillFilterInput> get or =>
      _$this._or ??= new ListBuilder<GBillFilterInput>();
  set or(ListBuilder<GBillFilterInput>? or) => _$this._or = or;

  GStringOperationFilterInputBuilder? _id;
  GStringOperationFilterInputBuilder get id =>
      _$this._id ??= new GStringOperationFilterInputBuilder();
  set id(GStringOperationFilterInputBuilder? id) => _$this._id = id;

  GStringOperationFilterInputBuilder? _customerId;
  GStringOperationFilterInputBuilder get customerId =>
      _$this._customerId ??= new GStringOperationFilterInputBuilder();
  set customerId(GStringOperationFilterInputBuilder? customerId) =>
      _$this._customerId = customerId;

  GComparableDecimalOperationFilterInputBuilder? _total;
  GComparableDecimalOperationFilterInputBuilder get total =>
      _$this._total ??= new GComparableDecimalOperationFilterInputBuilder();
  set total(GComparableDecimalOperationFilterInputBuilder? total) =>
      _$this._total = total;

  GBooleanOperationFilterInputBuilder? _isSuccess;
  GBooleanOperationFilterInputBuilder get isSuccess =>
      _$this._isSuccess ??= new GBooleanOperationFilterInputBuilder();
  set isSuccess(GBooleanOperationFilterInputBuilder? isSuccess) =>
      _$this._isSuccess = isSuccess;

  GComparableDecimalOperationFilterInputBuilder? _amountOwed;
  GComparableDecimalOperationFilterInputBuilder get amountOwed =>
      _$this._amountOwed ??=
          new GComparableDecimalOperationFilterInputBuilder();
  set amountOwed(GComparableDecimalOperationFilterInputBuilder? amountOwed) =>
      _$this._amountOwed = amountOwed;

  GComparableDateTimeOperationFilterInputBuilder? _created;
  GComparableDateTimeOperationFilterInputBuilder get created =>
      _$this._created ??= new GComparableDateTimeOperationFilterInputBuilder();
  set created(GComparableDateTimeOperationFilterInputBuilder? created) =>
      _$this._created = created;

  GComparableDateTimeOperationFilterInputBuilder? _lastUpdated;
  GComparableDateTimeOperationFilterInputBuilder get lastUpdated =>
      _$this._lastUpdated ??=
          new GComparableDateTimeOperationFilterInputBuilder();
  set lastUpdated(
          GComparableDateTimeOperationFilterInputBuilder? lastUpdated) =>
      _$this._lastUpdated = lastUpdated;

  GStringOperationFilterInputBuilder? _note;
  GStringOperationFilterInputBuilder get note =>
      _$this._note ??= new GStringOperationFilterInputBuilder();
  set note(GStringOperationFilterInputBuilder? note) => _$this._note = note;

  GStringOperationFilterInputBuilder? _invoice;
  GStringOperationFilterInputBuilder get invoice =>
      _$this._invoice ??= new GStringOperationFilterInputBuilder();
  set invoice(GStringOperationFilterInputBuilder? invoice) =>
      _$this._invoice = invoice;

  GBillFilterInputBuilder();

  GBillFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _id = $v.id?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _total = $v.total?.toBuilder();
      _isSuccess = $v.isSuccess?.toBuilder();
      _amountOwed = $v.amountOwed?.toBuilder();
      _created = $v.created?.toBuilder();
      _lastUpdated = $v.lastUpdated?.toBuilder();
      _note = $v.note?.toBuilder();
      _invoice = $v.invoice?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBillFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBillFilterInput;
  }

  @override
  void update(void Function(GBillFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBillFilterInput build() => _build();

  _$GBillFilterInput _build() {
    _$GBillFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GBillFilterInput._(
              and: _and?.build(),
              or: _or?.build(),
              id: _id?.build(),
              customerId: _customerId?.build(),
              total: _total?.build(),
              isSuccess: _isSuccess?.build(),
              amountOwed: _amountOwed?.build(),
              created: _created?.build(),
              lastUpdated: _lastUpdated?.build(),
              note: _note?.build(),
              invoice: _invoice?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'id';
        _id?.build();
        _$failedField = 'customerId';
        _customerId?.build();
        _$failedField = 'total';
        _total?.build();
        _$failedField = 'isSuccess';
        _isSuccess?.build();
        _$failedField = 'amountOwed';
        _amountOwed?.build();
        _$failedField = 'created';
        _created?.build();
        _$failedField = 'lastUpdated';
        _lastUpdated?.build();
        _$failedField = 'note';
        _note?.build();
        _$failedField = 'invoice';
        _invoice?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBillFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBillInput extends GBillInput {
  @override
  final String id;
  @override
  final String customerId;
  @override
  final GDecimal total;
  @override
  final bool isSuccess;
  @override
  final GDecimal amountOwed;
  @override
  final GDateTime created;
  @override
  final GDateTime lastUpdated;
  @override
  final String note;
  @override
  final String invoice;

  factory _$GBillInput([void Function(GBillInputBuilder)? updates]) =>
      (new GBillInputBuilder()..update(updates))._build();

  _$GBillInput._(
      {required this.id,
      required this.customerId,
      required this.total,
      required this.isSuccess,
      required this.amountOwed,
      required this.created,
      required this.lastUpdated,
      required this.note,
      required this.invoice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GBillInput', 'id');
    BuiltValueNullFieldError.checkNotNull(
        customerId, r'GBillInput', 'customerId');
    BuiltValueNullFieldError.checkNotNull(total, r'GBillInput', 'total');
    BuiltValueNullFieldError.checkNotNull(
        isSuccess, r'GBillInput', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(
        amountOwed, r'GBillInput', 'amountOwed');
    BuiltValueNullFieldError.checkNotNull(created, r'GBillInput', 'created');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdated, r'GBillInput', 'lastUpdated');
    BuiltValueNullFieldError.checkNotNull(note, r'GBillInput', 'note');
    BuiltValueNullFieldError.checkNotNull(invoice, r'GBillInput', 'invoice');
  }

  @override
  GBillInput rebuild(void Function(GBillInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBillInputBuilder toBuilder() => new GBillInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBillInput &&
        id == other.id &&
        customerId == other.customerId &&
        total == other.total &&
        isSuccess == other.isSuccess &&
        amountOwed == other.amountOwed &&
        created == other.created &&
        lastUpdated == other.lastUpdated &&
        note == other.note &&
        invoice == other.invoice;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), customerId.hashCode),
                                total.hashCode),
                            isSuccess.hashCode),
                        amountOwed.hashCode),
                    created.hashCode),
                lastUpdated.hashCode),
            note.hashCode),
        invoice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBillInput')
          ..add('id', id)
          ..add('customerId', customerId)
          ..add('total', total)
          ..add('isSuccess', isSuccess)
          ..add('amountOwed', amountOwed)
          ..add('created', created)
          ..add('lastUpdated', lastUpdated)
          ..add('note', note)
          ..add('invoice', invoice))
        .toString();
  }
}

class GBillInputBuilder implements Builder<GBillInput, GBillInputBuilder> {
  _$GBillInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  GDecimalBuilder? _total;
  GDecimalBuilder get total => _$this._total ??= new GDecimalBuilder();
  set total(GDecimalBuilder? total) => _$this._total = total;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  GDecimalBuilder? _amountOwed;
  GDecimalBuilder get amountOwed =>
      _$this._amountOwed ??= new GDecimalBuilder();
  set amountOwed(GDecimalBuilder? amountOwed) =>
      _$this._amountOwed = amountOwed;

  GDateTimeBuilder? _created;
  GDateTimeBuilder get created => _$this._created ??= new GDateTimeBuilder();
  set created(GDateTimeBuilder? created) => _$this._created = created;

  GDateTimeBuilder? _lastUpdated;
  GDateTimeBuilder get lastUpdated =>
      _$this._lastUpdated ??= new GDateTimeBuilder();
  set lastUpdated(GDateTimeBuilder? lastUpdated) =>
      _$this._lastUpdated = lastUpdated;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _invoice;
  String? get invoice => _$this._invoice;
  set invoice(String? invoice) => _$this._invoice = invoice;

  GBillInputBuilder();

  GBillInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customerId = $v.customerId;
      _total = $v.total.toBuilder();
      _isSuccess = $v.isSuccess;
      _amountOwed = $v.amountOwed.toBuilder();
      _created = $v.created.toBuilder();
      _lastUpdated = $v.lastUpdated.toBuilder();
      _note = $v.note;
      _invoice = $v.invoice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBillInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBillInput;
  }

  @override
  void update(void Function(GBillInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBillInput build() => _build();

  _$GBillInput _build() {
    _$GBillInput _$result;
    try {
      _$result = _$v ??
          new _$GBillInput._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GBillInput', 'id'),
              customerId: BuiltValueNullFieldError.checkNotNull(
                  customerId, r'GBillInput', 'customerId'),
              total: total.build(),
              isSuccess: BuiltValueNullFieldError.checkNotNull(
                  isSuccess, r'GBillInput', 'isSuccess'),
              amountOwed: amountOwed.build(),
              created: created.build(),
              lastUpdated: lastUpdated.build(),
              note: BuiltValueNullFieldError.checkNotNull(
                  note, r'GBillInput', 'note'),
              invoice: BuiltValueNullFieldError.checkNotNull(
                  invoice, r'GBillInput', 'invoice'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'total';
        total.build();

        _$failedField = 'amountOwed';
        amountOwed.build();
        _$failedField = 'created';
        created.build();
        _$failedField = 'lastUpdated';
        lastUpdated.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBillInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBillSortInput extends GBillSortInput {
  @override
  final GSortEnumType? created;

  factory _$GBillSortInput([void Function(GBillSortInputBuilder)? updates]) =>
      (new GBillSortInputBuilder()..update(updates))._build();

  _$GBillSortInput._({this.created}) : super._();

  @override
  GBillSortInput rebuild(void Function(GBillSortInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBillSortInputBuilder toBuilder() =>
      new GBillSortInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBillSortInput && created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc(0, created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBillSortInput')
          ..add('created', created))
        .toString();
  }
}

class GBillSortInputBuilder
    implements Builder<GBillSortInput, GBillSortInputBuilder> {
  _$GBillSortInput? _$v;

  GSortEnumType? _created;
  GSortEnumType? get created => _$this._created;
  set created(GSortEnumType? created) => _$this._created = created;

  GBillSortInputBuilder();

  GBillSortInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBillSortInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBillSortInput;
  }

  @override
  void update(void Function(GBillSortInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBillSortInput build() => _build();

  _$GBillSortInput _build() {
    final _$result = _$v ?? new _$GBillSortInput._(created: created);
    replace(_$result);
    return _$result;
  }
}

class _$GBooleanOperationFilterInput extends GBooleanOperationFilterInput {
  @override
  final bool? eq;
  @override
  final bool? neq;

  factory _$GBooleanOperationFilterInput(
          [void Function(GBooleanOperationFilterInputBuilder)? updates]) =>
      (new GBooleanOperationFilterInputBuilder()..update(updates))._build();

  _$GBooleanOperationFilterInput._({this.eq, this.neq}) : super._();

  @override
  GBooleanOperationFilterInput rebuild(
          void Function(GBooleanOperationFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBooleanOperationFilterInputBuilder toBuilder() =>
      new GBooleanOperationFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBooleanOperationFilterInput &&
        eq == other.eq &&
        neq == other.neq;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, eq.hashCode), neq.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBooleanOperationFilterInput')
          ..add('eq', eq)
          ..add('neq', neq))
        .toString();
  }
}

class GBooleanOperationFilterInputBuilder
    implements
        Builder<GBooleanOperationFilterInput,
            GBooleanOperationFilterInputBuilder> {
  _$GBooleanOperationFilterInput? _$v;

  bool? _eq;
  bool? get eq => _$this._eq;
  set eq(bool? eq) => _$this._eq = eq;

  bool? _neq;
  bool? get neq => _$this._neq;
  set neq(bool? neq) => _$this._neq = neq;

  GBooleanOperationFilterInputBuilder();

  GBooleanOperationFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eq = $v.eq;
      _neq = $v.neq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBooleanOperationFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBooleanOperationFilterInput;
  }

  @override
  void update(void Function(GBooleanOperationFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBooleanOperationFilterInput build() => _build();

  _$GBooleanOperationFilterInput _build() {
    final _$result =
        _$v ?? new _$GBooleanOperationFilterInput._(eq: eq, neq: neq);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemInput extends GCartItemInput {
  @override
  final String id;
  @override
  final String sessionId;
  @override
  final String priceId;
  @override
  final int quantity;
  @override
  final GDateTime createdAt;
  @override
  final GDateTime modifiedAt;

  factory _$GCartItemInput([void Function(GCartItemInputBuilder)? updates]) =>
      (new GCartItemInputBuilder()..update(updates))._build();

  _$GCartItemInput._(
      {required this.id,
      required this.sessionId,
      required this.priceId,
      required this.quantity,
      required this.createdAt,
      required this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GCartItemInput', 'id');
    BuiltValueNullFieldError.checkNotNull(
        sessionId, r'GCartItemInput', 'sessionId');
    BuiltValueNullFieldError.checkNotNull(
        priceId, r'GCartItemInput', 'priceId');
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'GCartItemInput', 'quantity');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GCartItemInput', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'GCartItemInput', 'modifiedAt');
  }

  @override
  GCartItemInput rebuild(void Function(GCartItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemInputBuilder toBuilder() =>
      new GCartItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemInput &&
        id == other.id &&
        sessionId == other.sessionId &&
        priceId == other.priceId &&
        quantity == other.quantity &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), sessionId.hashCode),
                    priceId.hashCode),
                quantity.hashCode),
            createdAt.hashCode),
        modifiedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCartItemInput')
          ..add('id', id)
          ..add('sessionId', sessionId)
          ..add('priceId', priceId)
          ..add('quantity', quantity)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class GCartItemInputBuilder
    implements Builder<GCartItemInput, GCartItemInputBuilder> {
  _$GCartItemInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _priceId;
  String? get priceId => _$this._priceId;
  set priceId(String? priceId) => _$this._priceId = priceId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  GDateTimeBuilder? _createdAt;
  GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new GDateTimeBuilder();
  set createdAt(GDateTimeBuilder? createdAt) => _$this._createdAt = createdAt;

  GDateTimeBuilder? _modifiedAt;
  GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new GDateTimeBuilder();
  set modifiedAt(GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GCartItemInputBuilder();

  GCartItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sessionId = $v.sessionId;
      _priceId = $v.priceId;
      _quantity = $v.quantity;
      _createdAt = $v.createdAt.toBuilder();
      _modifiedAt = $v.modifiedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCartItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemInput;
  }

  @override
  void update(void Function(GCartItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCartItemInput build() => _build();

  _$GCartItemInput _build() {
    _$GCartItemInput _$result;
    try {
      _$result = _$v ??
          new _$GCartItemInput._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCartItemInput', 'id'),
              sessionId: BuiltValueNullFieldError.checkNotNull(
                  sessionId, r'GCartItemInput', 'sessionId'),
              priceId: BuiltValueNullFieldError.checkNotNull(
                  priceId, r'GCartItemInput', 'priceId'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, r'GCartItemInput', 'quantity'),
              createdAt: createdAt.build(),
              modifiedAt: modifiedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'modifiedAt';
        modifiedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCartItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GComparableDateTimeOperationFilterInput
    extends GComparableDateTimeOperationFilterInput {
  @override
  final GDateTime? eq;
  @override
  final GDateTime? neq;
  @override
  final BuiltList<GDateTime>? Gin;
  @override
  final BuiltList<GDateTime>? nin;
  @override
  final GDateTime? gt;
  @override
  final GDateTime? ngt;
  @override
  final GDateTime? gte;
  @override
  final GDateTime? ngte;
  @override
  final GDateTime? lt;
  @override
  final GDateTime? nlt;
  @override
  final GDateTime? lte;
  @override
  final GDateTime? nlte;

  factory _$GComparableDateTimeOperationFilterInput(
          [void Function(GComparableDateTimeOperationFilterInputBuilder)?
              updates]) =>
      (new GComparableDateTimeOperationFilterInputBuilder()..update(updates))
          ._build();

  _$GComparableDateTimeOperationFilterInput._(
      {this.eq,
      this.neq,
      this.Gin,
      this.nin,
      this.gt,
      this.ngt,
      this.gte,
      this.ngte,
      this.lt,
      this.nlt,
      this.lte,
      this.nlte})
      : super._();

  @override
  GComparableDateTimeOperationFilterInput rebuild(
          void Function(GComparableDateTimeOperationFilterInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GComparableDateTimeOperationFilterInputBuilder toBuilder() =>
      new GComparableDateTimeOperationFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GComparableDateTimeOperationFilterInput &&
        eq == other.eq &&
        neq == other.neq &&
        Gin == other.Gin &&
        nin == other.nin &&
        gt == other.gt &&
        ngt == other.ngt &&
        gte == other.gte &&
        ngte == other.ngte &&
        lt == other.lt &&
        nlt == other.nlt &&
        lte == other.lte &&
        nlte == other.nlte;
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
                                            $jc($jc(0, eq.hashCode),
                                                neq.hashCode),
                                            Gin.hashCode),
                                        nin.hashCode),
                                    gt.hashCode),
                                ngt.hashCode),
                            gte.hashCode),
                        ngte.hashCode),
                    lt.hashCode),
                nlt.hashCode),
            lte.hashCode),
        nlte.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GComparableDateTimeOperationFilterInput')
          ..add('eq', eq)
          ..add('neq', neq)
          ..add('Gin', Gin)
          ..add('nin', nin)
          ..add('gt', gt)
          ..add('ngt', ngt)
          ..add('gte', gte)
          ..add('ngte', ngte)
          ..add('lt', lt)
          ..add('nlt', nlt)
          ..add('lte', lte)
          ..add('nlte', nlte))
        .toString();
  }
}

class GComparableDateTimeOperationFilterInputBuilder
    implements
        Builder<GComparableDateTimeOperationFilterInput,
            GComparableDateTimeOperationFilterInputBuilder> {
  _$GComparableDateTimeOperationFilterInput? _$v;

  GDateTimeBuilder? _eq;
  GDateTimeBuilder get eq => _$this._eq ??= new GDateTimeBuilder();
  set eq(GDateTimeBuilder? eq) => _$this._eq = eq;

  GDateTimeBuilder? _neq;
  GDateTimeBuilder get neq => _$this._neq ??= new GDateTimeBuilder();
  set neq(GDateTimeBuilder? neq) => _$this._neq = neq;

  ListBuilder<GDateTime>? _Gin;
  ListBuilder<GDateTime> get Gin =>
      _$this._Gin ??= new ListBuilder<GDateTime>();
  set Gin(ListBuilder<GDateTime>? Gin) => _$this._Gin = Gin;

  ListBuilder<GDateTime>? _nin;
  ListBuilder<GDateTime> get nin =>
      _$this._nin ??= new ListBuilder<GDateTime>();
  set nin(ListBuilder<GDateTime>? nin) => _$this._nin = nin;

  GDateTimeBuilder? _gt;
  GDateTimeBuilder get gt => _$this._gt ??= new GDateTimeBuilder();
  set gt(GDateTimeBuilder? gt) => _$this._gt = gt;

  GDateTimeBuilder? _ngt;
  GDateTimeBuilder get ngt => _$this._ngt ??= new GDateTimeBuilder();
  set ngt(GDateTimeBuilder? ngt) => _$this._ngt = ngt;

  GDateTimeBuilder? _gte;
  GDateTimeBuilder get gte => _$this._gte ??= new GDateTimeBuilder();
  set gte(GDateTimeBuilder? gte) => _$this._gte = gte;

  GDateTimeBuilder? _ngte;
  GDateTimeBuilder get ngte => _$this._ngte ??= new GDateTimeBuilder();
  set ngte(GDateTimeBuilder? ngte) => _$this._ngte = ngte;

  GDateTimeBuilder? _lt;
  GDateTimeBuilder get lt => _$this._lt ??= new GDateTimeBuilder();
  set lt(GDateTimeBuilder? lt) => _$this._lt = lt;

  GDateTimeBuilder? _nlt;
  GDateTimeBuilder get nlt => _$this._nlt ??= new GDateTimeBuilder();
  set nlt(GDateTimeBuilder? nlt) => _$this._nlt = nlt;

  GDateTimeBuilder? _lte;
  GDateTimeBuilder get lte => _$this._lte ??= new GDateTimeBuilder();
  set lte(GDateTimeBuilder? lte) => _$this._lte = lte;

  GDateTimeBuilder? _nlte;
  GDateTimeBuilder get nlte => _$this._nlte ??= new GDateTimeBuilder();
  set nlte(GDateTimeBuilder? nlte) => _$this._nlte = nlte;

  GComparableDateTimeOperationFilterInputBuilder();

  GComparableDateTimeOperationFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eq = $v.eq?.toBuilder();
      _neq = $v.neq?.toBuilder();
      _Gin = $v.Gin?.toBuilder();
      _nin = $v.nin?.toBuilder();
      _gt = $v.gt?.toBuilder();
      _ngt = $v.ngt?.toBuilder();
      _gte = $v.gte?.toBuilder();
      _ngte = $v.ngte?.toBuilder();
      _lt = $v.lt?.toBuilder();
      _nlt = $v.nlt?.toBuilder();
      _lte = $v.lte?.toBuilder();
      _nlte = $v.nlte?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GComparableDateTimeOperationFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GComparableDateTimeOperationFilterInput;
  }

  @override
  void update(
      void Function(GComparableDateTimeOperationFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GComparableDateTimeOperationFilterInput build() => _build();

  _$GComparableDateTimeOperationFilterInput _build() {
    _$GComparableDateTimeOperationFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GComparableDateTimeOperationFilterInput._(
              eq: _eq?.build(),
              neq: _neq?.build(),
              Gin: _Gin?.build(),
              nin: _nin?.build(),
              gt: _gt?.build(),
              ngt: _ngt?.build(),
              gte: _gte?.build(),
              ngte: _ngte?.build(),
              lt: _lt?.build(),
              nlt: _nlt?.build(),
              lte: _lte?.build(),
              nlte: _nlte?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eq';
        _eq?.build();
        _$failedField = 'neq';
        _neq?.build();
        _$failedField = 'Gin';
        _Gin?.build();
        _$failedField = 'nin';
        _nin?.build();
        _$failedField = 'gt';
        _gt?.build();
        _$failedField = 'ngt';
        _ngt?.build();
        _$failedField = 'gte';
        _gte?.build();
        _$failedField = 'ngte';
        _ngte?.build();
        _$failedField = 'lt';
        _lt?.build();
        _$failedField = 'nlt';
        _nlt?.build();
        _$failedField = 'lte';
        _lte?.build();
        _$failedField = 'nlte';
        _nlte?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GComparableDateTimeOperationFilterInput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GComparableDecimalOperationFilterInput
    extends GComparableDecimalOperationFilterInput {
  @override
  final GDecimal? eq;
  @override
  final GDecimal? neq;
  @override
  final BuiltList<GDecimal>? Gin;
  @override
  final BuiltList<GDecimal>? nin;
  @override
  final GDecimal? gt;
  @override
  final GDecimal? ngt;
  @override
  final GDecimal? gte;
  @override
  final GDecimal? ngte;
  @override
  final GDecimal? lt;
  @override
  final GDecimal? nlt;
  @override
  final GDecimal? lte;
  @override
  final GDecimal? nlte;

  factory _$GComparableDecimalOperationFilterInput(
          [void Function(GComparableDecimalOperationFilterInputBuilder)?
              updates]) =>
      (new GComparableDecimalOperationFilterInputBuilder()..update(updates))
          ._build();

  _$GComparableDecimalOperationFilterInput._(
      {this.eq,
      this.neq,
      this.Gin,
      this.nin,
      this.gt,
      this.ngt,
      this.gte,
      this.ngte,
      this.lt,
      this.nlt,
      this.lte,
      this.nlte})
      : super._();

  @override
  GComparableDecimalOperationFilterInput rebuild(
          void Function(GComparableDecimalOperationFilterInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GComparableDecimalOperationFilterInputBuilder toBuilder() =>
      new GComparableDecimalOperationFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GComparableDecimalOperationFilterInput &&
        eq == other.eq &&
        neq == other.neq &&
        Gin == other.Gin &&
        nin == other.nin &&
        gt == other.gt &&
        ngt == other.ngt &&
        gte == other.gte &&
        ngte == other.ngte &&
        lt == other.lt &&
        nlt == other.nlt &&
        lte == other.lte &&
        nlte == other.nlte;
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
                                            $jc($jc(0, eq.hashCode),
                                                neq.hashCode),
                                            Gin.hashCode),
                                        nin.hashCode),
                                    gt.hashCode),
                                ngt.hashCode),
                            gte.hashCode),
                        ngte.hashCode),
                    lt.hashCode),
                nlt.hashCode),
            lte.hashCode),
        nlte.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GComparableDecimalOperationFilterInput')
          ..add('eq', eq)
          ..add('neq', neq)
          ..add('Gin', Gin)
          ..add('nin', nin)
          ..add('gt', gt)
          ..add('ngt', ngt)
          ..add('gte', gte)
          ..add('ngte', ngte)
          ..add('lt', lt)
          ..add('nlt', nlt)
          ..add('lte', lte)
          ..add('nlte', nlte))
        .toString();
  }
}

class GComparableDecimalOperationFilterInputBuilder
    implements
        Builder<GComparableDecimalOperationFilterInput,
            GComparableDecimalOperationFilterInputBuilder> {
  _$GComparableDecimalOperationFilterInput? _$v;

  GDecimalBuilder? _eq;
  GDecimalBuilder get eq => _$this._eq ??= new GDecimalBuilder();
  set eq(GDecimalBuilder? eq) => _$this._eq = eq;

  GDecimalBuilder? _neq;
  GDecimalBuilder get neq => _$this._neq ??= new GDecimalBuilder();
  set neq(GDecimalBuilder? neq) => _$this._neq = neq;

  ListBuilder<GDecimal>? _Gin;
  ListBuilder<GDecimal> get Gin => _$this._Gin ??= new ListBuilder<GDecimal>();
  set Gin(ListBuilder<GDecimal>? Gin) => _$this._Gin = Gin;

  ListBuilder<GDecimal>? _nin;
  ListBuilder<GDecimal> get nin => _$this._nin ??= new ListBuilder<GDecimal>();
  set nin(ListBuilder<GDecimal>? nin) => _$this._nin = nin;

  GDecimalBuilder? _gt;
  GDecimalBuilder get gt => _$this._gt ??= new GDecimalBuilder();
  set gt(GDecimalBuilder? gt) => _$this._gt = gt;

  GDecimalBuilder? _ngt;
  GDecimalBuilder get ngt => _$this._ngt ??= new GDecimalBuilder();
  set ngt(GDecimalBuilder? ngt) => _$this._ngt = ngt;

  GDecimalBuilder? _gte;
  GDecimalBuilder get gte => _$this._gte ??= new GDecimalBuilder();
  set gte(GDecimalBuilder? gte) => _$this._gte = gte;

  GDecimalBuilder? _ngte;
  GDecimalBuilder get ngte => _$this._ngte ??= new GDecimalBuilder();
  set ngte(GDecimalBuilder? ngte) => _$this._ngte = ngte;

  GDecimalBuilder? _lt;
  GDecimalBuilder get lt => _$this._lt ??= new GDecimalBuilder();
  set lt(GDecimalBuilder? lt) => _$this._lt = lt;

  GDecimalBuilder? _nlt;
  GDecimalBuilder get nlt => _$this._nlt ??= new GDecimalBuilder();
  set nlt(GDecimalBuilder? nlt) => _$this._nlt = nlt;

  GDecimalBuilder? _lte;
  GDecimalBuilder get lte => _$this._lte ??= new GDecimalBuilder();
  set lte(GDecimalBuilder? lte) => _$this._lte = lte;

  GDecimalBuilder? _nlte;
  GDecimalBuilder get nlte => _$this._nlte ??= new GDecimalBuilder();
  set nlte(GDecimalBuilder? nlte) => _$this._nlte = nlte;

  GComparableDecimalOperationFilterInputBuilder();

  GComparableDecimalOperationFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eq = $v.eq?.toBuilder();
      _neq = $v.neq?.toBuilder();
      _Gin = $v.Gin?.toBuilder();
      _nin = $v.nin?.toBuilder();
      _gt = $v.gt?.toBuilder();
      _ngt = $v.ngt?.toBuilder();
      _gte = $v.gte?.toBuilder();
      _ngte = $v.ngte?.toBuilder();
      _lt = $v.lt?.toBuilder();
      _nlt = $v.nlt?.toBuilder();
      _lte = $v.lte?.toBuilder();
      _nlte = $v.nlte?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GComparableDecimalOperationFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GComparableDecimalOperationFilterInput;
  }

  @override
  void update(
      void Function(GComparableDecimalOperationFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GComparableDecimalOperationFilterInput build() => _build();

  _$GComparableDecimalOperationFilterInput _build() {
    _$GComparableDecimalOperationFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GComparableDecimalOperationFilterInput._(
              eq: _eq?.build(),
              neq: _neq?.build(),
              Gin: _Gin?.build(),
              nin: _nin?.build(),
              gt: _gt?.build(),
              ngt: _ngt?.build(),
              gte: _gte?.build(),
              ngte: _ngte?.build(),
              lt: _lt?.build(),
              nlt: _nlt?.build(),
              lte: _lte?.build(),
              nlte: _nlte?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eq';
        _eq?.build();
        _$failedField = 'neq';
        _neq?.build();
        _$failedField = 'Gin';
        _Gin?.build();
        _$failedField = 'nin';
        _nin?.build();
        _$failedField = 'gt';
        _gt?.build();
        _$failedField = 'ngt';
        _ngt?.build();
        _$failedField = 'gte';
        _gte?.build();
        _$failedField = 'ngte';
        _ngte?.build();
        _$failedField = 'lt';
        _lt?.build();
        _$failedField = 'nlt';
        _nlt?.build();
        _$failedField = 'lte';
        _lte?.build();
        _$failedField = 'nlte';
        _nlte?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GComparableDecimalOperationFilterInput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GDecimal extends GDecimal {
  @override
  final String value;

  factory _$GDecimal([void Function(GDecimalBuilder)? updates]) =>
      (new GDecimalBuilder()..update(updates))._build();

  _$GDecimal._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDecimal', 'value');
  }

  @override
  GDecimal rebuild(void Function(GDecimalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDecimalBuilder toBuilder() => new GDecimalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDecimal && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDecimal')..add('value', value))
        .toString();
  }
}

class GDecimalBuilder implements Builder<GDecimal, GDecimalBuilder> {
  _$GDecimal? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDecimalBuilder();

  GDecimalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDecimal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDecimal;
  }

  @override
  void update(void Function(GDecimalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDecimal build() => _build();

  _$GDecimal _build() {
    final _$result = _$v ??
        new _$GDecimal._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDecimal', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GDiscountInput extends GDiscountInput {
  @override
  final String name;
  @override
  final String description;
  @override
  final int discountPercent;
  @override
  final bool active;
  @override
  final GDateTime createdAt;
  @override
  final GDateTime modifiedAt;
  @override
  final String id;

  factory _$GDiscountInput([void Function(GDiscountInputBuilder)? updates]) =>
      (new GDiscountInputBuilder()..update(updates))._build();

  _$GDiscountInput._(
      {required this.name,
      required this.description,
      required this.discountPercent,
      required this.active,
      required this.createdAt,
      required this.modifiedAt,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GDiscountInput', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GDiscountInput', 'description');
    BuiltValueNullFieldError.checkNotNull(
        discountPercent, r'GDiscountInput', 'discountPercent');
    BuiltValueNullFieldError.checkNotNull(active, r'GDiscountInput', 'active');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GDiscountInput', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'GDiscountInput', 'modifiedAt');
    BuiltValueNullFieldError.checkNotNull(id, r'GDiscountInput', 'id');
  }

  @override
  GDiscountInput rebuild(void Function(GDiscountInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDiscountInputBuilder toBuilder() =>
      new GDiscountInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDiscountInput &&
        name == other.name &&
        description == other.description &&
        discountPercent == other.discountPercent &&
        active == other.active &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        discountPercent.hashCode),
                    active.hashCode),
                createdAt.hashCode),
            modifiedAt.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDiscountInput')
          ..add('name', name)
          ..add('description', description)
          ..add('discountPercent', discountPercent)
          ..add('active', active)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('id', id))
        .toString();
  }
}

class GDiscountInputBuilder
    implements Builder<GDiscountInput, GDiscountInputBuilder> {
  _$GDiscountInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _discountPercent;
  int? get discountPercent => _$this._discountPercent;
  set discountPercent(int? discountPercent) =>
      _$this._discountPercent = discountPercent;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  GDateTimeBuilder? _createdAt;
  GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new GDateTimeBuilder();
  set createdAt(GDateTimeBuilder? createdAt) => _$this._createdAt = createdAt;

  GDateTimeBuilder? _modifiedAt;
  GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new GDateTimeBuilder();
  set modifiedAt(GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDiscountInputBuilder();

  GDiscountInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _discountPercent = $v.discountPercent;
      _active = $v.active;
      _createdAt = $v.createdAt.toBuilder();
      _modifiedAt = $v.modifiedAt.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDiscountInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDiscountInput;
  }

  @override
  void update(void Function(GDiscountInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDiscountInput build() => _build();

  _$GDiscountInput _build() {
    _$GDiscountInput _$result;
    try {
      _$result = _$v ??
          new _$GDiscountInput._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GDiscountInput', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GDiscountInput', 'description'),
              discountPercent: BuiltValueNullFieldError.checkNotNull(
                  discountPercent, r'GDiscountInput', 'discountPercent'),
              active: BuiltValueNullFieldError.checkNotNull(
                  active, r'GDiscountInput', 'active'),
              createdAt: createdAt.build(),
              modifiedAt: modifiedAt.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GDiscountInput', 'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'modifiedAt';
        modifiedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDiscountInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOrderDetailsInput extends GOrderDetailsInput {
  @override
  final String id;
  @override
  final String status;
  @override
  final String userId;
  @override
  final GDecimal total;
  @override
  final GDateTime createdAt;
  @override
  final GDateTime modifiedAt;

  factory _$GOrderDetailsInput(
          [void Function(GOrderDetailsInputBuilder)? updates]) =>
      (new GOrderDetailsInputBuilder()..update(updates))._build();

  _$GOrderDetailsInput._(
      {required this.id,
      required this.status,
      required this.userId,
      required this.total,
      required this.createdAt,
      required this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GOrderDetailsInput', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GOrderDetailsInput', 'status');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GOrderDetailsInput', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GOrderDetailsInput', 'total');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GOrderDetailsInput', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'GOrderDetailsInput', 'modifiedAt');
  }

  @override
  GOrderDetailsInput rebuild(
          void Function(GOrderDetailsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOrderDetailsInputBuilder toBuilder() =>
      new GOrderDetailsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOrderDetailsInput &&
        id == other.id &&
        status == other.status &&
        userId == other.userId &&
        total == other.total &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), status.hashCode), userId.hashCode),
                total.hashCode),
            createdAt.hashCode),
        modifiedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOrderDetailsInput')
          ..add('id', id)
          ..add('status', status)
          ..add('userId', userId)
          ..add('total', total)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class GOrderDetailsInputBuilder
    implements Builder<GOrderDetailsInput, GOrderDetailsInputBuilder> {
  _$GOrderDetailsInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GDecimalBuilder? _total;
  GDecimalBuilder get total => _$this._total ??= new GDecimalBuilder();
  set total(GDecimalBuilder? total) => _$this._total = total;

  GDateTimeBuilder? _createdAt;
  GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new GDateTimeBuilder();
  set createdAt(GDateTimeBuilder? createdAt) => _$this._createdAt = createdAt;

  GDateTimeBuilder? _modifiedAt;
  GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new GDateTimeBuilder();
  set modifiedAt(GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GOrderDetailsInputBuilder();

  GOrderDetailsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _userId = $v.userId;
      _total = $v.total.toBuilder();
      _createdAt = $v.createdAt.toBuilder();
      _modifiedAt = $v.modifiedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOrderDetailsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOrderDetailsInput;
  }

  @override
  void update(void Function(GOrderDetailsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOrderDetailsInput build() => _build();

  _$GOrderDetailsInput _build() {
    _$GOrderDetailsInput _$result;
    try {
      _$result = _$v ??
          new _$GOrderDetailsInput._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GOrderDetailsInput', 'id'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GOrderDetailsInput', 'status'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GOrderDetailsInput', 'userId'),
              total: total.build(),
              createdAt: createdAt.build(),
              modifiedAt: modifiedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'total';
        total.build();
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'modifiedAt';
        modifiedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOrderDetailsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GOrderItemInput extends GOrderItemInput {
  @override
  final String id;
  @override
  final String orderId;
  @override
  final String priceId;
  @override
  final int quantity;
  @override
  final GDateTime createdAt;
  @override
  final GDateTime modifiedAt;

  factory _$GOrderItemInput([void Function(GOrderItemInputBuilder)? updates]) =>
      (new GOrderItemInputBuilder()..update(updates))._build();

  _$GOrderItemInput._(
      {required this.id,
      required this.orderId,
      required this.priceId,
      required this.quantity,
      required this.createdAt,
      required this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GOrderItemInput', 'id');
    BuiltValueNullFieldError.checkNotNull(
        orderId, r'GOrderItemInput', 'orderId');
    BuiltValueNullFieldError.checkNotNull(
        priceId, r'GOrderItemInput', 'priceId');
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'GOrderItemInput', 'quantity');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GOrderItemInput', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'GOrderItemInput', 'modifiedAt');
  }

  @override
  GOrderItemInput rebuild(void Function(GOrderItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOrderItemInputBuilder toBuilder() =>
      new GOrderItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOrderItemInput &&
        id == other.id &&
        orderId == other.orderId &&
        priceId == other.priceId &&
        quantity == other.quantity &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), orderId.hashCode),
                    priceId.hashCode),
                quantity.hashCode),
            createdAt.hashCode),
        modifiedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GOrderItemInput')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('priceId', priceId)
          ..add('quantity', quantity)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class GOrderItemInputBuilder
    implements Builder<GOrderItemInput, GOrderItemInputBuilder> {
  _$GOrderItemInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _priceId;
  String? get priceId => _$this._priceId;
  set priceId(String? priceId) => _$this._priceId = priceId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  GDateTimeBuilder? _createdAt;
  GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new GDateTimeBuilder();
  set createdAt(GDateTimeBuilder? createdAt) => _$this._createdAt = createdAt;

  GDateTimeBuilder? _modifiedAt;
  GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new GDateTimeBuilder();
  set modifiedAt(GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GOrderItemInputBuilder();

  GOrderItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _priceId = $v.priceId;
      _quantity = $v.quantity;
      _createdAt = $v.createdAt.toBuilder();
      _modifiedAt = $v.modifiedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOrderItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOrderItemInput;
  }

  @override
  void update(void Function(GOrderItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GOrderItemInput build() => _build();

  _$GOrderItemInput _build() {
    _$GOrderItemInput _$result;
    try {
      _$result = _$v ??
          new _$GOrderItemInput._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GOrderItemInput', 'id'),
              orderId: BuiltValueNullFieldError.checkNotNull(
                  orderId, r'GOrderItemInput', 'orderId'),
              priceId: BuiltValueNullFieldError.checkNotNull(
                  priceId, r'GOrderItemInput', 'priceId'),
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, r'GOrderItemInput', 'quantity'),
              createdAt: createdAt.build(),
              modifiedAt: modifiedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'modifiedAt';
        modifiedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GOrderItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GShoppingSessionInput extends GShoppingSessionInput {
  @override
  final String id;
  @override
  final String userId;
  @override
  final GDecimal total;
  @override
  final GDateTime createdAt;
  @override
  final GDateTime modifiedAt;

  factory _$GShoppingSessionInput(
          [void Function(GShoppingSessionInputBuilder)? updates]) =>
      (new GShoppingSessionInputBuilder()..update(updates))._build();

  _$GShoppingSessionInput._(
      {required this.id,
      required this.userId,
      required this.total,
      required this.createdAt,
      required this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GShoppingSessionInput', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GShoppingSessionInput', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GShoppingSessionInput', 'total');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GShoppingSessionInput', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'GShoppingSessionInput', 'modifiedAt');
  }

  @override
  GShoppingSessionInput rebuild(
          void Function(GShoppingSessionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GShoppingSessionInputBuilder toBuilder() =>
      new GShoppingSessionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GShoppingSessionInput &&
        id == other.id &&
        userId == other.userId &&
        total == other.total &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), userId.hashCode), total.hashCode),
            createdAt.hashCode),
        modifiedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GShoppingSessionInput')
          ..add('id', id)
          ..add('userId', userId)
          ..add('total', total)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class GShoppingSessionInputBuilder
    implements Builder<GShoppingSessionInput, GShoppingSessionInputBuilder> {
  _$GShoppingSessionInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GDecimalBuilder? _total;
  GDecimalBuilder get total => _$this._total ??= new GDecimalBuilder();
  set total(GDecimalBuilder? total) => _$this._total = total;

  GDateTimeBuilder? _createdAt;
  GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new GDateTimeBuilder();
  set createdAt(GDateTimeBuilder? createdAt) => _$this._createdAt = createdAt;

  GDateTimeBuilder? _modifiedAt;
  GDateTimeBuilder get modifiedAt =>
      _$this._modifiedAt ??= new GDateTimeBuilder();
  set modifiedAt(GDateTimeBuilder? modifiedAt) =>
      _$this._modifiedAt = modifiedAt;

  GShoppingSessionInputBuilder();

  GShoppingSessionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _total = $v.total.toBuilder();
      _createdAt = $v.createdAt.toBuilder();
      _modifiedAt = $v.modifiedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GShoppingSessionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GShoppingSessionInput;
  }

  @override
  void update(void Function(GShoppingSessionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GShoppingSessionInput build() => _build();

  _$GShoppingSessionInput _build() {
    _$GShoppingSessionInput _$result;
    try {
      _$result = _$v ??
          new _$GShoppingSessionInput._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GShoppingSessionInput', 'id'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GShoppingSessionInput', 'userId'),
              total: total.build(),
              createdAt: createdAt.build(),
              modifiedAt: modifiedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'total';
        total.build();
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'modifiedAt';
        modifiedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GShoppingSessionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStringOperationFilterInput extends GStringOperationFilterInput {
  @override
  final BuiltList<GStringOperationFilterInput>? and;
  @override
  final BuiltList<GStringOperationFilterInput>? or;
  @override
  final String? eq;
  @override
  final String? neq;
  @override
  final String? contains;
  @override
  final String? ncontains;
  @override
  final BuiltList<String>? Gin;
  @override
  final BuiltList<String>? nin;
  @override
  final String? startsWith;
  @override
  final String? nstartsWith;
  @override
  final String? endsWith;
  @override
  final String? nendsWith;

  factory _$GStringOperationFilterInput(
          [void Function(GStringOperationFilterInputBuilder)? updates]) =>
      (new GStringOperationFilterInputBuilder()..update(updates))._build();

  _$GStringOperationFilterInput._(
      {this.and,
      this.or,
      this.eq,
      this.neq,
      this.contains,
      this.ncontains,
      this.Gin,
      this.nin,
      this.startsWith,
      this.nstartsWith,
      this.endsWith,
      this.nendsWith})
      : super._();

  @override
  GStringOperationFilterInput rebuild(
          void Function(GStringOperationFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStringOperationFilterInputBuilder toBuilder() =>
      new GStringOperationFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStringOperationFilterInput &&
        and == other.and &&
        or == other.or &&
        eq == other.eq &&
        neq == other.neq &&
        contains == other.contains &&
        ncontains == other.ncontains &&
        Gin == other.Gin &&
        nin == other.nin &&
        startsWith == other.startsWith &&
        nstartsWith == other.nstartsWith &&
        endsWith == other.endsWith &&
        nendsWith == other.nendsWith;
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
                                            $jc($jc(0, and.hashCode),
                                                or.hashCode),
                                            eq.hashCode),
                                        neq.hashCode),
                                    contains.hashCode),
                                ncontains.hashCode),
                            Gin.hashCode),
                        nin.hashCode),
                    startsWith.hashCode),
                nstartsWith.hashCode),
            endsWith.hashCode),
        nendsWith.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStringOperationFilterInput')
          ..add('and', and)
          ..add('or', or)
          ..add('eq', eq)
          ..add('neq', neq)
          ..add('contains', contains)
          ..add('ncontains', ncontains)
          ..add('Gin', Gin)
          ..add('nin', nin)
          ..add('startsWith', startsWith)
          ..add('nstartsWith', nstartsWith)
          ..add('endsWith', endsWith)
          ..add('nendsWith', nendsWith))
        .toString();
  }
}

class GStringOperationFilterInputBuilder
    implements
        Builder<GStringOperationFilterInput,
            GStringOperationFilterInputBuilder> {
  _$GStringOperationFilterInput? _$v;

  ListBuilder<GStringOperationFilterInput>? _and;
  ListBuilder<GStringOperationFilterInput> get and =>
      _$this._and ??= new ListBuilder<GStringOperationFilterInput>();
  set and(ListBuilder<GStringOperationFilterInput>? and) => _$this._and = and;

  ListBuilder<GStringOperationFilterInput>? _or;
  ListBuilder<GStringOperationFilterInput> get or =>
      _$this._or ??= new ListBuilder<GStringOperationFilterInput>();
  set or(ListBuilder<GStringOperationFilterInput>? or) => _$this._or = or;

  String? _eq;
  String? get eq => _$this._eq;
  set eq(String? eq) => _$this._eq = eq;

  String? _neq;
  String? get neq => _$this._neq;
  set neq(String? neq) => _$this._neq = neq;

  String? _contains;
  String? get contains => _$this._contains;
  set contains(String? contains) => _$this._contains = contains;

  String? _ncontains;
  String? get ncontains => _$this._ncontains;
  set ncontains(String? ncontains) => _$this._ncontains = ncontains;

  ListBuilder<String>? _Gin;
  ListBuilder<String> get Gin => _$this._Gin ??= new ListBuilder<String>();
  set Gin(ListBuilder<String>? Gin) => _$this._Gin = Gin;

  ListBuilder<String>? _nin;
  ListBuilder<String> get nin => _$this._nin ??= new ListBuilder<String>();
  set nin(ListBuilder<String>? nin) => _$this._nin = nin;

  String? _startsWith;
  String? get startsWith => _$this._startsWith;
  set startsWith(String? startsWith) => _$this._startsWith = startsWith;

  String? _nstartsWith;
  String? get nstartsWith => _$this._nstartsWith;
  set nstartsWith(String? nstartsWith) => _$this._nstartsWith = nstartsWith;

  String? _endsWith;
  String? get endsWith => _$this._endsWith;
  set endsWith(String? endsWith) => _$this._endsWith = endsWith;

  String? _nendsWith;
  String? get nendsWith => _$this._nendsWith;
  set nendsWith(String? nendsWith) => _$this._nendsWith = nendsWith;

  GStringOperationFilterInputBuilder();

  GStringOperationFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _eq = $v.eq;
      _neq = $v.neq;
      _contains = $v.contains;
      _ncontains = $v.ncontains;
      _Gin = $v.Gin?.toBuilder();
      _nin = $v.nin?.toBuilder();
      _startsWith = $v.startsWith;
      _nstartsWith = $v.nstartsWith;
      _endsWith = $v.endsWith;
      _nendsWith = $v.nendsWith;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStringOperationFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStringOperationFilterInput;
  }

  @override
  void update(void Function(GStringOperationFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStringOperationFilterInput build() => _build();

  _$GStringOperationFilterInput _build() {
    _$GStringOperationFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GStringOperationFilterInput._(
              and: _and?.build(),
              or: _or?.build(),
              eq: eq,
              neq: neq,
              contains: contains,
              ncontains: ncontains,
              Gin: _Gin?.build(),
              nin: _nin?.build(),
              startsWith: startsWith,
              nstartsWith: nstartsWith,
              endsWith: endsWith,
              nendsWith: nendsWith);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();

        _$failedField = 'Gin';
        _Gin?.build();
        _$failedField = 'nin';
        _nin?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStringOperationFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserFilterInput extends GUserFilterInput {
  @override
  final BuiltList<GUserFilterInput>? and;
  @override
  final BuiltList<GUserFilterInput>? or;
  @override
  final GStringOperationFilterInput? id;
  @override
  final GStringOperationFilterInput? userName;
  @override
  final GStringOperationFilterInput? fullName;
  @override
  final GStringOperationFilterInput? phoneNumber;
  @override
  final GStringOperationFilterInput? address;

  factory _$GUserFilterInput(
          [void Function(GUserFilterInputBuilder)? updates]) =>
      (new GUserFilterInputBuilder()..update(updates))._build();

  _$GUserFilterInput._(
      {this.and,
      this.or,
      this.id,
      this.userName,
      this.fullName,
      this.phoneNumber,
      this.address})
      : super._();

  @override
  GUserFilterInput rebuild(void Function(GUserFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFilterInputBuilder toBuilder() =>
      new GUserFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFilterInput &&
        and == other.and &&
        or == other.or &&
        id == other.id &&
        userName == other.userName &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, and.hashCode), or.hashCode), id.hashCode),
                    userName.hashCode),
                fullName.hashCode),
            phoneNumber.hashCode),
        address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserFilterInput')
          ..add('and', and)
          ..add('or', or)
          ..add('id', id)
          ..add('userName', userName)
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address))
        .toString();
  }
}

class GUserFilterInputBuilder
    implements Builder<GUserFilterInput, GUserFilterInputBuilder> {
  _$GUserFilterInput? _$v;

  ListBuilder<GUserFilterInput>? _and;
  ListBuilder<GUserFilterInput> get and =>
      _$this._and ??= new ListBuilder<GUserFilterInput>();
  set and(ListBuilder<GUserFilterInput>? and) => _$this._and = and;

  ListBuilder<GUserFilterInput>? _or;
  ListBuilder<GUserFilterInput> get or =>
      _$this._or ??= new ListBuilder<GUserFilterInput>();
  set or(ListBuilder<GUserFilterInput>? or) => _$this._or = or;

  GStringOperationFilterInputBuilder? _id;
  GStringOperationFilterInputBuilder get id =>
      _$this._id ??= new GStringOperationFilterInputBuilder();
  set id(GStringOperationFilterInputBuilder? id) => _$this._id = id;

  GStringOperationFilterInputBuilder? _userName;
  GStringOperationFilterInputBuilder get userName =>
      _$this._userName ??= new GStringOperationFilterInputBuilder();
  set userName(GStringOperationFilterInputBuilder? userName) =>
      _$this._userName = userName;

  GStringOperationFilterInputBuilder? _fullName;
  GStringOperationFilterInputBuilder get fullName =>
      _$this._fullName ??= new GStringOperationFilterInputBuilder();
  set fullName(GStringOperationFilterInputBuilder? fullName) =>
      _$this._fullName = fullName;

  GStringOperationFilterInputBuilder? _phoneNumber;
  GStringOperationFilterInputBuilder get phoneNumber =>
      _$this._phoneNumber ??= new GStringOperationFilterInputBuilder();
  set phoneNumber(GStringOperationFilterInputBuilder? phoneNumber) =>
      _$this._phoneNumber = phoneNumber;

  GStringOperationFilterInputBuilder? _address;
  GStringOperationFilterInputBuilder get address =>
      _$this._address ??= new GStringOperationFilterInputBuilder();
  set address(GStringOperationFilterInputBuilder? address) =>
      _$this._address = address;

  GUserFilterInputBuilder();

  GUserFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _and = $v.and?.toBuilder();
      _or = $v.or?.toBuilder();
      _id = $v.id?.toBuilder();
      _userName = $v.userName?.toBuilder();
      _fullName = $v.fullName?.toBuilder();
      _phoneNumber = $v.phoneNumber?.toBuilder();
      _address = $v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFilterInput;
  }

  @override
  void update(void Function(GUserFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFilterInput build() => _build();

  _$GUserFilterInput _build() {
    _$GUserFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GUserFilterInput._(
              and: _and?.build(),
              or: _or?.build(),
              id: _id?.build(),
              userName: _userName?.build(),
              fullName: _fullName?.build(),
              phoneNumber: _phoneNumber?.build(),
              address: _address?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'and';
        _and?.build();
        _$failedField = 'or';
        _or?.build();
        _$failedField = 'id';
        _id?.build();
        _$failedField = 'userName';
        _userName?.build();
        _$failedField = 'fullName';
        _fullName?.build();
        _$failedField = 'phoneNumber';
        _phoneNumber?.build();
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserInput extends GUserInput {
  @override
  final String id;
  @override
  final String userName;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String address;

  factory _$GUserInput([void Function(GUserInputBuilder)? updates]) =>
      (new GUserInputBuilder()..update(updates))._build();

  _$GUserInput._(
      {required this.id,
      required this.userName,
      required this.fullName,
      required this.phoneNumber,
      required this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUserInput', 'id');
    BuiltValueNullFieldError.checkNotNull(userName, r'GUserInput', 'userName');
    BuiltValueNullFieldError.checkNotNull(fullName, r'GUserInput', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GUserInput', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(address, r'GUserInput', 'address');
  }

  @override
  GUserInput rebuild(void Function(GUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserInputBuilder toBuilder() => new GUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserInput &&
        id == other.id &&
        userName == other.userName &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), userName.hashCode), fullName.hashCode),
            phoneNumber.hashCode),
        address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserInput')
          ..add('id', id)
          ..add('userName', userName)
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address))
        .toString();
  }
}

class GUserInputBuilder implements Builder<GUserInput, GUserInputBuilder> {
  _$GUserInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  GUserInputBuilder();

  GUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userName = $v.userName;
      _fullName = $v.fullName;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserInput;
  }

  @override
  void update(void Function(GUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserInput build() => _build();

  _$GUserInput _build() {
    final _$result = _$v ??
        new _$GUserInput._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'GUserInput', 'id'),
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GUserInput', 'userName'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, r'GUserInput', 'fullName'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'GUserInput', 'phoneNumber'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'GUserInput', 'address'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserOrderInfoInput extends GUserOrderInfoInput {
  @override
  final String userId;
  @override
  final String recipient;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final String id;

  factory _$GUserOrderInfoInput(
          [void Function(GUserOrderInfoInputBuilder)? updates]) =>
      (new GUserOrderInfoInputBuilder()..update(updates))._build();

  _$GUserOrderInfoInput._(
      {required this.userId,
      required this.recipient,
      required this.phoneNumber,
      required this.address,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GUserOrderInfoInput', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        recipient, r'GUserOrderInfoInput', 'recipient');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GUserOrderInfoInput', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        address, r'GUserOrderInfoInput', 'address');
    BuiltValueNullFieldError.checkNotNull(id, r'GUserOrderInfoInput', 'id');
  }

  @override
  GUserOrderInfoInput rebuild(
          void Function(GUserOrderInfoInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserOrderInfoInputBuilder toBuilder() =>
      new GUserOrderInfoInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserOrderInfoInput &&
        userId == other.userId &&
        recipient == other.recipient &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, userId.hashCode), recipient.hashCode),
                phoneNumber.hashCode),
            address.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserOrderInfoInput')
          ..add('userId', userId)
          ..add('recipient', recipient)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('id', id))
        .toString();
  }
}

class GUserOrderInfoInputBuilder
    implements Builder<GUserOrderInfoInput, GUserOrderInfoInputBuilder> {
  _$GUserOrderInfoInput? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _recipient;
  String? get recipient => _$this._recipient;
  set recipient(String? recipient) => _$this._recipient = recipient;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUserOrderInfoInputBuilder();

  GUserOrderInfoInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _recipient = $v.recipient;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserOrderInfoInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserOrderInfoInput;
  }

  @override
  void update(void Function(GUserOrderInfoInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserOrderInfoInput build() => _build();

  _$GUserOrderInfoInput _build() {
    final _$result = _$v ??
        new _$GUserOrderInfoInput._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GUserOrderInfoInput', 'userId'),
            recipient: BuiltValueNullFieldError.checkNotNull(
                recipient, r'GUserOrderInfoInput', 'recipient'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'GUserOrderInfoInput', 'phoneNumber'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'GUserOrderInfoInput', 'address'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserOrderInfoInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
