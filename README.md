# reverse_proxy

Example showcasing reverse proxy capabilities of Jaguar.

# Try it

First start the backend server:

```bash
pub serve --port 8000
```

Now start the server:

```bash
dart bin/server.dart
```

Open the following URL in a browser of your choice:

[`http://localhost:8085/client`](http://localhost:8085/client/)

# Explanation

This project uses the reverse proxy capabilities to access HTML pages and
supporting files served by a pub server.