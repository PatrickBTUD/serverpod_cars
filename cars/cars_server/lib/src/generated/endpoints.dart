/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/car_endpoint.dart' as _i2;
import 'package:cars_server/src/generated/car.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'car': _i2.CarEndpoint()
        ..initialize(
          server,
          'car',
          null,
        )
    };
    connectors['car'] = _i1.EndpointConnector(
      name: 'car',
      endpoint: endpoints['car']!,
      methodConnectors: {
        'addCar': _i1.MethodConnector(
          name: 'addCar',
          params: {
            'car': _i1.ParameterDescription(
              name: 'car',
              type: _i1.getType<_i3.Car>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['car'] as _i2.CarEndpoint).addCar(
            session,
            params['car'],
          ),
        ),
        'getCarById': _i1.MethodConnector(
          name: 'getCarById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['car'] as _i2.CarEndpoint).getCarById(
            session,
            params['id'],
          ),
        ),
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {
            'orderByRegistration': _i1.ParameterDescription(
              name: 'orderByRegistration',
              type: _i1.getType<bool>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['car'] as _i2.CarEndpoint).getAll(
            session,
            params['orderByRegistration'],
          ),
        ),
        'deleteCar': _i1.MethodConnector(
          name: 'deleteCar',
          params: {
            'car': _i1.ParameterDescription(
              name: 'car',
              type: _i1.getType<_i3.Car>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['car'] as _i2.CarEndpoint).deleteCar(
            session,
            params['car'],
          ),
        ),
      },
    );
  }
}
