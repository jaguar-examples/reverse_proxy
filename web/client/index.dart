import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:http/browser_client.dart' as http;

import 'package:reverse_proxy/reverse_proxy.dart';

final http.Client client = new http.BrowserClient();

main() async {
  final api = new Api(client);

  final SpanElement usernameDiv = querySelector('#username');
  usernameDiv.text = await api.getUsername();

  final SpanElement versionDiv = querySelector('#version');
  versionDiv.text = await api.getVersion();
}
