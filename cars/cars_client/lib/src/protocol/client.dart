/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:cars_client/src/protocol/car.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointCar extends _i1.EndpointRef {
  _EndpointCar(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'car';

  _i2.Future<String> addCar(_i3.Car car) => caller.callServerEndpoint<String>(
        'car',
        'addCar',
        {'car': car},
      );

  _i2.Future<_i3.Car?> getCarById(int id) =>
      caller.callServerEndpoint<_i3.Car?>(
        'car',
        'getCarById',
        {'id': id},
      );

  _i2.Future<List<_i3.Car>?> getAll(bool orderByRegistration) =>
      caller.callServerEndpoint<List<_i3.Car>?>(
        'car',
        'getAll',
        {'orderByRegistration': orderByRegistration},
      );

  _i2.Future<bool> deleteCar(_i3.Car car) => caller.callServerEndpoint<bool>(
        'car',
        'deleteCar',
        {'car': car},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    car = _EndpointCar(this);
  }

  late final _EndpointCar car;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'car': car};
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
