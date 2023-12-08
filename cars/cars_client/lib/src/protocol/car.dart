/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Car extends _i1.SerializableEntity {
  Car({
    this.id,
    required this.brand,
    required this.model,
    required this.registrationDate,
    required this.mileage,
    required this.value,
  });

  factory Car.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Car(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      brand:
          serializationManager.deserialize<String>(jsonSerialization['brand']),
      model:
          serializationManager.deserialize<String>(jsonSerialization['model']),
      registrationDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['registrationDate']),
      mileage:
          serializationManager.deserialize<int>(jsonSerialization['mileage']),
      value: serializationManager.deserialize<int>(jsonSerialization['value']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String brand;

  String model;

  DateTime registrationDate;

  int mileage;

  int value;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'brand': brand,
      'model': model,
      'registrationDate': registrationDate,
      'mileage': mileage,
      'value': value,
    };
  }
}
