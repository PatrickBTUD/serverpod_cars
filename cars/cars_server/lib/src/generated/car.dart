/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Car extends _i1.TableRow {
  Car({
    int? id,
    required this.brand,
    required this.model,
    required this.registrationDate,
    required this.mileage,
    required this.value,
  }) : super(id);

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

  static final t = CarTable();

  String brand;

  String model;

  DateTime registrationDate;

  int mileage;

  int value;

  @override
  String get tableName => 'car';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'brand': brand,
      'model': model,
      'registrationDate': registrationDate,
      'mileage': mileage,
      'value': value,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'brand': brand,
      'model': model,
      'registrationDate': registrationDate,
      'mileage': mileage,
      'value': value,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'brand':
        brand = value;
        return;
      case 'model':
        model = value;
        return;
      case 'registrationDate':
        registrationDate = value;
        return;
      case 'mileage':
        mileage = value;
        return;
      case 'value':
        value = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Car>> find(
    _i1.Session session, {
    CarExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Car>(
      where: where != null ? where(Car.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Car?> findSingleRow(
    _i1.Session session, {
    CarExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Car>(
      where: where != null ? where(Car.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Car?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Car>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CarExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Car>(
      where: where(Car.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Car row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Car row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Car row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    CarExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Car>(
      where: where != null ? where(Car.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CarExpressionBuilder = _i1.Expression Function(CarTable);

class CarTable extends _i1.Table {
  CarTable() : super(tableName: 'car');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final brand = _i1.ColumnString('brand');

  final model = _i1.ColumnString('model');

  final registrationDate = _i1.ColumnDateTime('registrationDate');

  final mileage = _i1.ColumnInt('mileage');

  final value = _i1.ColumnInt('value');

  @override
  List<_i1.Column> get columns => [
        id,
        brand,
        model,
        registrationDate,
        mileage,
        value,
      ];
}

@Deprecated('Use CarTable.t instead.')
CarTable tCar = CarTable();
