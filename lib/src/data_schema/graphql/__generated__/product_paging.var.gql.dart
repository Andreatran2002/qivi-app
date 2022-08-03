// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:qivi_app/__generated__/serializers.gql.dart' as _i1;

part 'product_paging.var.gql.g.dart';

abstract class GPRODUCTPAGINGVars
    implements Built<GPRODUCTPAGINGVars, GPRODUCTPAGINGVarsBuilder> {
  GPRODUCTPAGINGVars._();

  factory GPRODUCTPAGINGVars([Function(GPRODUCTPAGINGVarsBuilder b) updates]) =
      _$GPRODUCTPAGINGVars;

  static Serializer<GPRODUCTPAGINGVars> get serializer =>
      _$gPRODUCTPAGINGVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPRODUCTPAGINGVars.serializer, this)
          as Map<String, dynamic>);
  static GPRODUCTPAGINGVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPRODUCTPAGINGVars.serializer, json);
}
