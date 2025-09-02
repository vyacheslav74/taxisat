import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/graphql/app_socket_link.dart';
import 'package:rider_flutter/config/locator/locator.config.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';

final locator = GetIt.instance;

@InjectableInit()
void configureDependencies() => locator.init(
  environment: prod.name,
);

@module
abstract class ServiceModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @factoryMethod
  GraphQLClient create() {
    final url = Env.gqlEndpoint;
    final authLink = AuthLink(getToken: () {
      String? token = locator<AuthBloc>().state.jwtToken;
      return token == null ? null : 'Bearer $token';
    });
    final HttpLink httpLink = HttpLink(url);
    final Link httpLinkWithAuth = authLink.concat(httpLink);
    final subscriptionUrl = url.replaceAll('http', 'ws');
    final websocketLink = AppSocketLink(subscriptionUrl);
    final Link link = Link.split(
          (request) => request.isSubscription,
      websocketLink,
      httpLinkWithAuth,
    );
    //final Directory directory = await getTemporaryDirectory();
    //final store = await HiveStore.open(path: directory.path);
    return GraphQLClient(
      link: link,
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.noCache,
        ),
        mutate: Policies(
          fetch: FetchPolicy.noCache,
        ),
      ),
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }
}
