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
          query GetHomeData {
  categories: category{
    id
    name
    description
    categoryId
  }
  recommended_product: products(first: 5){
    nodes {
        id
        name
        description
        
        prices: pricesByProductId{
          id
          productId
          price
          sKU
        } 
      }
  }
  
}
      ''',
      ),
      // variables: {
      //   'nRepositories': nRepositories,
      // },
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

    return HomeResponse(
        categories: categories, recommendedProducts: recommendedProduct);
  }
}
