/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'car.dart' as _i2;
import 'package:cars_client/src/protocol/car.dart' as _i3;
export 'car.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Car) {
      return _i2.Car.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Car?>()) {
      return (data != null ? _i2.Car.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i3.Car>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Car>(e)).toList()
          : null) as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Car) {
      return 'Car';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Car') {
      return deserialize<_i2.Car>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
