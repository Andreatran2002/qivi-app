import 'package:flutter/material.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/repo.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';

class SearchProduct extends SearchDelegate<Product> {
  final ProductRepository repo;
  List<Product> products = [];
  List<String> _oldFilters = const [];

  SearchProduct(this.repo);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<Product>>(
        future: repo.searchProduct(query, null, null),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            products = snapshot.data!;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 190,
                  childAspectRatio: 6 / 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: products.length,
              itemBuilder: (_, index) => ProductCard(products[index]),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text("Loi"));
          }
          return Center(child: CircularProgressIndicator());
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return Container(child: Center(child: Text("")));
    } else {
      return FutureBuilder<List<Product>>(
          future: repo.searchProduct(query, null, null),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              products = snapshot.data!;
            }

            if (snapshot.hasError) {
              return Center(child: Text("Loi"));
            }
            return ListView.builder(
                itemCount: products.length,
                itemBuilder: (_, index) =>
                    ListTile(title: Text(products[index].name)));
          });
    }
  }
}


  // BuildContext contextPage;
  // final suggestions1 = ["https://www.google.com"];

  // @override
  // String get searchFieldLabel => "Enter a web address";

  // @override
  // List<Widget> buildActions(BuildContext context) {
    // return [
    //   IconButton(
    //     icon: Icon(Icons.clear),
    //     onPressed: () {
    //       query = "";
    //     },
    //   )
    // ];
  // }

  // @override
  // Widget buildLeading(BuildContext context) {
  //   return IconButton(
  //     icon: AnimatedIcon(
  //       icon: AnimatedIcons.menu_arrow,
  //       progress: transitionAnimation,
  //     ),
  //     onPressed: () {
  //       close(context,"");
  //     },
  //   );
  // }

  // @override
  // Widget buildResults(BuildContext context) {
  //   return null;
  // }

  // @override
  // Widget buildSuggestions(BuildContext context) {
  //   final suggestions = query.isEmpty ? suggestions1 : [];
  //   return ListView.builder(
  //     itemCount: suggestions.length,
  //     itemBuilder: (content, index) => ListTile(
  //         leading: Icon(Icons.arrow_left), title: Text(suggestions[index])),
  //   );
  // }