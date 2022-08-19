import 'package:graphql/client.dart';

Future<GraphQLClient> getClient() async {
  // final store = await HiveStore.open(path: 'qivi');
  final link = HttpLink('http://quynhvystore.herokuapp.com/api/graphql/');

  return GraphQLClient(
    cache: GraphQLCache(),
    link: link,
  );
}
