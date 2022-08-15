import 'package:graphql/client.dart';
import 'package:qivi_app/src/client.dart';
import 'package:qivi_app/src/model/api/response/home_response.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

class HomeRepository {
  //     final dio = Dio();

  // Future<HomeResponse> getHomeData() async {
  //   final client = RestClient(dio);
  //   return client.getHomeData();
  // }
  HomeRepository() {}
  // final product = GproductsPagingReq((b) => b..vars.first = 10);

  Future<void> getAllProduct() async {
    var client = await getClient();
    // var result = client.request(product).listen((response) => print(response));
    // result.onData((data) {
    // print(data);
    // });
  }

  Future<HomeResponse> getHomeData() async {
    final GraphQLClient _client = await getClient();

    final QueryOptions options = QueryOptions(
      document: gql(
        r'''
          
query GetHomeData ($first : Int!){
  categories: category {
    id
    name
    description
    categoryId
  }
  recommended_product: products(first: $first) {
    nodes {
      id
      name
      image
      description
      category {
        id
        name
        description
        categoryId
      }
      prices: pricesByProductId {
        id
        productId
        price
        sKU
      }
    }
  }
  best_price_product: priceAndProduct(first: $first, order: { price: ASC }) {
    nodes {
      id
      productId
      price
      sKU
      product {
        id
        name
        image
        description
        category {
          id
          name
          description
          categoryId
        }
         
      }
    }
  }
}

      ''',
      ),
      variables: {
        'first': 5,
      },
    );

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      print(result.exception.toString());
    }

    List<Categoryy> categories = [];
    result.data!['categories'].forEach((a) {
      categories.add(Categoryy.fromJson(a));
    });
    List<Product> recommendedProduct = [];
    result.data!['recommended_product']['nodes'].forEach((a) {
      recommendedProduct.add(Product.fromJson(a));
    });
    List<ProductPrice> bestPriceProducts = [];
    result.data!['best_price_product']['nodes'].forEach((a) {
      bestPriceProducts.add(ProductPrice.fromJson(a));
    });

    return HomeResponse(
        categories: categories,
        recommendedProducts: recommendedProduct,
        bestPriceProducts: bestPriceProducts);
  }
}
