// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_paging.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPRODUCTPAGINGVars> _$gPRODUCTPAGINGVarsSerializer =
    new _$GPRODUCTPAGINGVarsSerializer();

class _$GPRODUCTPAGINGVarsSerializer
    implements StructuredSerializer<GPRODUCTPAGINGVars> {
  @override
  final Iterable<Type> types = const [GPRODUCTPAGINGVars, _$GPRODUCTPAGINGVars];
  @override
  final String wireName = 'GPRODUCTPAGINGVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPRODUCTPAGINGVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPRODUCTPAGINGVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPRODUCTPAGINGVarsBuilder().build();
  }
}

class _$GPRODUCTPAGINGVars extends GPRODUCTPAGINGVars {
  factory _$GPRODUCTPAGINGVars(
          [void Function(GPRODUCTPAGINGVarsBuilder)? updates]) =>
      (new GPRODUCTPAGINGVarsBuilder()..update(updates))._build();

  _$GPRODUCTPAGINGVars._() : super._();

  @override
  GPRODUCTPAGINGVars rebuild(
          void Function(GPRODUCTPAGINGVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPRODUCTPAGINGVarsBuilder toBuilder() =>
      new GPRODUCTPAGINGVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPRODUCTPAGINGVars;
  }

  @override
  int get hashCode {
    return 402572286;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPRODUCTPAGINGVars').toString();
  }
}

class GPRODUCTPAGINGVarsBuilder
    implements Builder<GPRODUCTPAGINGVars, GPRODUCTPAGINGVarsBuilder> {
  _$GPRODUCTPAGINGVars? _$v;

  GPRODUCTPAGINGVarsBuilder();

  @override
  void replace(GPRODUCTPAGINGVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPRODUCTPAGINGVars;
  }

  @override
  void update(void Function(GPRODUCTPAGINGVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPRODUCTPAGINGVars build() => _build();

  _$GPRODUCTPAGINGVars _build() {
    final _$result = _$v ?? new _$GPRODUCTPAGINGVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
