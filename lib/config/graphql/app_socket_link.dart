import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';

class AppSocketLink extends Link {
  AppSocketLink(this.url);
  final String url;
  _Connection? _connection;

  /// this will be called every time you make a subscription
  @override
  Stream<Response> request(Request request, [forward]) async* {
    /// first get the token by your own way
    String? token = locator<AuthBloc>().state.jwtToken;

    /// check is connection is null or the token changed
    if (_connection == null || _connection!.token != token) {
      connectOrReconnect(token);
    }
    yield* _connection!.client.subscribe(request, true);
  }

  /// Connects or reconnects to the server with the specified headers.
  void connectOrReconnect(String? token) {
    _connection?.client.dispose();
    var uri = Uri.parse(url);
    if (kIsWeb) {
      /// web don't support headers in sockets so you may need to pass it as query string
      /// server must support that
      uri = uri.replace(queryParameters: {"access_token": token});
    }
    _connection = _Connection(
      client: SocketClient(
        uri.toString(),
        config: SocketClientConfig(
          autoReconnect: true,
          initialPayload: {"authToken": token},
          inactivityTimeout: const Duration(minutes: 30),
          headers: kIsWeb || token == null ? null : {"Authorization": " Bearer $token"},
        ),
      ),
      token: token,
    );
  }

  @override
  Future<void> dispose() async {
    await _connection?.client.dispose();
    _connection = null;
  }
}

/// this a wrapper for web socket to hold the used token
class _Connection {
  SocketClient client;
  String? token;
  _Connection({
    required this.client,
    required this.token,
  });
}
