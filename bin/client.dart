library example.jaguar_reverse_proxy.client;

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:reverse_proxy/reverse_proxy.dart';

main() async {
  final api = new Api(new http.IOClient(), host: 'http://localhost:8085');

  print(await api.getUsername());
  print(await api.getVersion());

  print((await api.client.get('http://localhost:8085/client')).body);

  exit(0);
}
