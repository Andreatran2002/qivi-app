// import 'package:flutter/src/widgets/framework.dart';
// import 'package:qivi_app/graphql/__generated__/product.data.gql.dart';
// import 'package:qivi_app/graphql/__generated__/product.var.gql.dart';

// class AllProductScreen extends StatelessWidget {
//   const AllProductScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return   Stream
//         client: client,
//         operationRequest: product,
//         builder: (
//           BuildContext context,
//           OperationResponse<GAllPokemonData, GAllPokemonVars> response,
//           Object error,
//         ) {
//           if (response.loading)
//             return Center(child: CircularProgressIndicator());

//           final pokemons = response.data?.queryPokemon ?? BuiltList();

//           return ListView.builder(
//             itemCount: pokemons.length,
//             itemBuilder: (context, index) => PokemonCard(
//               pokemon: pokemons[index],
//             ),
//           );
//         },
//       ), 
//   }
// }