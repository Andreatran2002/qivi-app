import 'package:graphql/client.dart';
import 'package:qivi_app/src/client.dart';
import 'package:qivi_app/src/model/api/response/home_response.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

class ProductRepository {
  ProductRepository() {}

  Future<Product> getProductById(String id) async {
    final GraphQLClient _client = await getClient();

    final QueryOptions options = QueryOptions(
        document: gql(
          r'''
          query GetProductById($id : String!){ 
            product: productById(id : $id) {
              id
              name
              image
              description  
              prices: pricesByProductId{
                price
                productId
                sKU
                id
              }
            }
          }
      ''',
        ),
        variables: {'id': id});

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      print(result.exception.toString());
    }
    return Product.fromJson(result.data!['product']);
  }
}
