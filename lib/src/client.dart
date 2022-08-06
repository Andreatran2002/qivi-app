import 'package:graphql/client.dart';
// import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<GraphQLClient> getClient() async {
  // final store = await HiveStore.open(path: 'qivi');
  final link = HttpLink('http://quynhvystore.herokuapp.com/api/graphql/');

  return GraphQLClient(
    cache: GraphQLCache(),
    link: link,
  );
}

// Future<Client> initClient() async {
//   await Hive.initFlutter();

//   final box = await Hive.openBox("graphql");

//   // final store = HiveStore(box);

//   // final cache = Cache(store: store);
//   final cache = Cache();

//   final link = HttpLink('http://quynhvystore.herokuapp.com/api/graphql/');

//   final client = Client(
//     link: link,
//     cache: cache,
//   );

//   return client;
// }
