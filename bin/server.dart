import 'package:jaguar/jaguar.dart';
import 'package:jaguar_dev_proxy/jaguar_dev_proxy.dart';

main() async {
  final server = new Jaguar(address: 'localhost', port: 8085);

  // Proxy all html client requests to pub server
  // NOTE: Run pub server on port 8000 using command
  //     pub serve --port 8000
  server.addApi(new PrefixedProxyServer('/client', 'http://localhost:8000/client'));
  server.addApi(new PrefixedProxyServer('/web__client__index.js', 'http://localhost:8000/web__client__index.js'));
  server.addApi(new PrefixedProxyServer('/web__client__index.js.errors', 'http://localhost:8000/web__client__index.js.errors'));
  server.addApi(new PrefixedProxyServer('/packages', 'http://localhost:8000/packages'));

  // The API
  server
    ..get(
        '/api/user',
        (ctx) => Response.json({
              'name': 'teja',
            }))
    ..get('/client/version', (_) => '0.1');

  await server.serve();
}
