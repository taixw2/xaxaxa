// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryOrderShopStruct extends BaseStruct {
  HistoryOrderShopStruct({
    int? id,
    String? name,
    String? longitude,
    String? latitude,
    String? gcj02Longitude,
    String? gcj02Latitude,
  })  : _id = id,
        _name = name,
        _longitude = longitude,
        _latitude = latitude,
        _gcj02Longitude = gcj02Longitude,
        _gcj02Latitude = gcj02Latitude;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "gcj02_longitude" field.
  String? _gcj02Longitude;
  String get gcj02Longitude => _gcj02Longitude ?? '';
  set gcj02Longitude(String? val) => _gcj02Longitude = val;

  bool hasGcj02Longitude() => _gcj02Longitude != null;

  // "gcj02_latitude" field.
  String? _gcj02Latitude;
  String get gcj02Latitude => _gcj02Latitude ?? '';
  set gcj02Latitude(String? val) => _gcj02Latitude = val;

  bool hasGcj02Latitude() => _gcj02Latitude != null;

  static HistoryOrderShopStruct fromMap(Map<String, dynamic> data) =>
      HistoryOrderShopStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        longitude: data['longitude'] as String?,
        latitude: data['latitude'] as String?,
        gcj02Longitude: data['gcj02_longitude'] as String?,
        gcj02Latitude: data['gcj02_latitude'] as String?,
      );

  static HistoryOrderShopStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoryOrderShopStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'longitude': _longitude,
        'latitude': _latitude,
        'gcj02_longitude': _gcj02Longitude,
        'gcj02_latitude': _gcj02Latitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'gcj02_longitude': serializeParam(
          _gcj02Longitude,
          ParamType.String,
        ),
        'gcj02_latitude': serializeParam(
          _gcj02Latitude,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistoryOrderShopStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoryOrderShopStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.String,
          false,
        ),
        gcj02Longitude: deserializeParam(
          data['gcj02_longitude'],
          ParamType.String,
          false,
        ),
        gcj02Latitude: deserializeParam(
          data['gcj02_latitude'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistoryOrderShopStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoryOrderShopStruct &&
        id == other.id &&
        name == other.name &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        gcj02Longitude == other.gcj02Longitude &&
        gcj02Latitude == other.gcj02Latitude;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, longitude, latitude, gcj02Longitude, gcj02Latitude]);
}

HistoryOrderShopStruct createHistoryOrderShopStruct({
  int? id,
  String? name,
  String? longitude,
  String? latitude,
  String? gcj02Longitude,
  String? gcj02Latitude,
}) =>
    HistoryOrderShopStruct(
      id: id,
      name: name,
      longitude: longitude,
      latitude: latitude,
      gcj02Longitude: gcj02Longitude,
      gcj02Latitude: gcj02Latitude,
    );
