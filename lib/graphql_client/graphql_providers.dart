// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:logger/logger.dart';

// class GraphQLConfig {
//   static HttpLink httpLink = HttpLink(
//     'https://bookmgtsystemgql.onrender.com/graphql',
//   );
//   GraphQLClient getClient() {
//     Link link = httpLink;

//     final Link logLink = CustomLogLink();
//     link = logLink.concat(link);

//     return GraphQLClient(
//       cache: GraphQLCache(),
//       link: link,
//     );
//   }

//   // GraphQLClient clientToQuery({String? token}) {
//   //   if (token != null && token.isNotEmpty) {
//   //     final AuthLink authLink = AuthLink(getToken: () async => 'Bearer $token');
//   //     final Link link = authLink.concat(httpLink);
//   //     return GraphQLClient(
//   //       link: link,
//   //       cache: GraphQLCache(),
//   //     );
//   //   } else {
//   //     return GraphQLClient(
//   //       link: httpLink,
//   //       cache: GraphQLCache(),
//   //     );
//   //   }
//   // }
// }

// class CustomLogLink extends Link {
//   final Logger logger = Logger();

//   @override
//   Stream<Response> request(Request request, [NextLink? forward]) {
//     logger.i('Request: ${request.toString()}');

//     if (forward != null) {
//       return forward(request).map((response) {
//         logger.i('Response: ${response.toString()}');
//         return response;
//       });
//     }

//     return Stream.fromIterable([]);
//   }
// }
