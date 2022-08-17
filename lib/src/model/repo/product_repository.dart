import 'package:graphql/client.dart';
import 'package:qivi_app/src/client.dart';
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

  Future<ProductPageInfo> getProductsByCategoryId(
      String categoryId, String? after) async {
    final GraphQLClient _client = await getClient();

    final QueryOptions options = QueryOptions(
        document: gql(
          r'''
       query GetProductByCategory($id: String!, $first : Int!, $after: String) {
  productByCategoryId(id: $id, first: $first, after: $after) {
    pageInfo {
      endCursor
      startCursor
      hasNextPage
      hasPreviousPage
    }
    products: nodes {
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
}
      ''',
        ),
        variables: {'id': categoryId, 'first': 20, 'after': after});

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      print(result.exception.toString());
    }
    List<Product> products = [];
    result.data!['productByCategoryId']['products'].forEach((a) {
      products.add(Product.fromJson(a));
    });
    return ProductPageInfo(products,
        PageInfo.fromJson(result.data!['productByCategoryId']['pageInfo']));
  }

  Future<List<Product>> searchProduct(
      String keyWord, int? after, String? categoryId) async {
    final GraphQLClient _client = await getClient();

    final QueryOptions options = QueryOptions(
        document: gql(
          r'''
      query SearchProduct($keyWord: String!, $first: Int) {
  products(
    first: $first
    where: { name: { contains: $keyWord } }
  ) {
   
    nodes {
      id
      name
      image
      description
      prices: pricesByProductId {
        price
        productId
        sKU
        id
      }
    }
  }
}

      ''',
        ),
        variables: {
          'keyWord': keyWord,
          'first': 20,
        });

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      print(result.exception.toString());
    }
    List<Product> products = [];
    result.data!['products']['nodes'].forEach((a) {
      products.add(Product.fromJson(a));
    });

    return products;
  }
}
