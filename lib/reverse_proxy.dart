import 'dart:async';
import 'package:http/http.dart' as http;

/// Platform agnostic client API to access the routes
class Api {
  final http.Client client;

  final String host;

  Api(this.client, {this.host: ''});

  /// Get username
  Future<String> getUsername() async {
    final http.Response resp = await client.get('$host/api/user');
    return resp.body;
  }

  /// Get version
  Future<String> getVersion() async {
    final http.Response resp = await client.get('$host/client/version');
    return resp.body;
  }
}