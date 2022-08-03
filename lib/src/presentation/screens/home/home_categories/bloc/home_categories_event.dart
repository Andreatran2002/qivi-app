import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

class HomeCategoriesEvent extends Equatable {
  const HomeCategoriesEvent();

  @override
  List<Object> get props => [];
}

class DisplayHomeCategories extends HomeCategoriesEvent {
  final List<Categoryy> categories;

  DisplayHomeCategories(this.categories);

  @override
  List<Object> get props => [categories];

  @override
  String toString() {
    return 'DisplayHomeCategories{categories: $categories}';
  }
}
