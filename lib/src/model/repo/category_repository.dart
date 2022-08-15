import 'package:graphql/client.dart';
import 'package:qivi_app/src/client.dart';
import 'package:qivi_app/src/model/api/response/home_response.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

class CategoryRepository {
  //     final dio = Dio();

  // Future<HomeResponse> getHomeData() async {
  //   final client = RestClient(dio);
  //   return client.getHomeData();
  // }
  CategoryRepository() {}
  // final product = GproductsPagingReq((b) => b..vars.first = 10);

  Future<void> getAllProduct() async {
    var client = await getClient();
    // var result = client.request(product).listen((response) => print(response));
    // result.onData((data) {
    // print(data);
    // });
  }

  Future<List<Categoryy>> getCategories() async {
    final GraphQLClient _client = await getClient();

    final QueryOptions options = QueryOptions(
      document: gql(
        r'''
query GetCategory (){
  categories: category {
    id
    name
    description
    categoryId
  }
}
      ''',
      ),
    );

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      print(result.exception.toString());
    }

    List<Categoryy> categories = [];
    result.data!['categories'].forEach((a) {
      categories.add(Categoryy.fromJson(a));
    });
    return categories;
  }
}
