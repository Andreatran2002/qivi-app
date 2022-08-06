import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categoryy.g.dart';

@JsonSerializable()
class Categoryy extends Equatable {
  String id;
  String name;
  String description;
  String categoryId;
  Categoryy({
    required this.id,
    required this.name,
    required this.description,
    required this.categoryId,
  });

  factory Categoryy.fromJson(Map<String, dynamic> json) => json != null
      ? _$CategoryyFromJson(json)
      : Categoryy(id: "", name: "", description: "", categoryId: "");

  Map<String, dynamic> toJson() => _$CategoryyToJson(this);

  @override
  List<Object> get props => [id, name, description, categoryId];

  @override
  String toString() {
    return 'Categoryy{id: $id, name: $name}';
  }
}
