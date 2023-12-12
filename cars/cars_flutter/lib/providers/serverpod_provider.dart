import 'package:cars_client/cars_client.dart';
import 'package:refena_flutter/refena_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a provider client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

//todo:
//get environment
//use provider to provide client depending on environment

final serverpodClientProvider = Provider((ref) {
  final client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
  return client;
});
