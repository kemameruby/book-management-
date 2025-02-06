// import 'package:book_management_system/graphql_client/graphql_providers.dart';
// import 'package:book_management_system/graphql_client/mutation.dart';
// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';

// class Authentication extends ChangeNotifier {
//   final GraphQLClient client = GraphQLConfig().getClient();

//   void signUp(
//       {required name,
//       required email,
//       required password,
//       required favoriteGenres}) {
//     MutationOptions options =
//         MutationOptions(document: gql(getSignupinput), variables: {
//       "input": {
//         "name": name,
//         "email": email,
//         "password": password,
//         "favoriteGenres": favoriteGenres
//       }
//     });
//     final result = client.mutate(options);
//   }
// }
