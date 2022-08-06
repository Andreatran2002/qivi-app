import 'package:json_annotation/json_annotation.dart';

import 'package:qivi_app/src/model/entity/entity.dart';

part 'home_response.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeResponse {
  List<Banner> banners = [];

  List<Categoryy> categories;

  @JsonKey(name: "recommended_products")
  List<Product> recommendedProducts = [];

  // @JsonKey(name: "nearby_theatres")
  // List<Cine> nearbyTheatres = [];p

  // @JsonKey(name: "show_by_categories")
  // List<ShowByCategoryResponse> showByCategories = [];

  HomeResponse({required this.categories, required this.recommendedProducts});

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
  @override
  String toString() {
    return 'Reponse{ categories: $categories , recommendedProducts: $recommendedProducts} ';
  }
}
