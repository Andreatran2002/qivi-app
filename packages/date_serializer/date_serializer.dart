import 'package:built_value/serializer.dart';

class DateSerializer implements PrimitiveSerializer<DateTime> {
  @override
  DateTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    assert(serialized is String,
        "DateSerializer expected 'String' but got ${serialized.runtimeType}");
    return DateTime.parse(serialized is String ? serialized : "");
  }

  @override
  Object serialize(
    Serializers serializers,
    DateTime date, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      date.toUtc().toIso8601String();

  @override
  Iterable<Type> get types => [DateTime];

  @override
  String get wireName => "Date";
}
