// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WarehouseDTStruct extends BaseStruct {
  WarehouseDTStruct({
    String? id,
    String? merchantId,
    String? branchId,
    String? code,
    String? name,
    String? city,
    String? address,
    String? longitude,
    String? latitude,
    String? isShop,
    String? sourceId,
    String? ctime,
    String? utime,
    String? status,
  })  : _id = id,
        _merchantId = merchantId,
        _branchId = branchId,
        _code = code,
        _name = name,
        _city = city,
        _address = address,
        _longitude = longitude,
        _latitude = latitude,
        _isShop = isShop,
        _sourceId = sourceId,
        _ctime = ctime,
        _utime = utime,
        _status = status;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "merchant_id" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  // "branch_id" field.
  String? _branchId;
  String get branchId => _branchId ?? '';
  set branchId(String? val) => _branchId = val;

  bool hasBranchId() => _branchId != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

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

  // "is_shop" field.
  String? _isShop;
  String get isShop => _isShop ?? '';
  set isShop(String? val) => _isShop = val;

  bool hasIsShop() => _isShop != null;

  // "source_id" field.
  String? _sourceId;
  String get sourceId => _sourceId ?? '';
  set sourceId(String? val) => _sourceId = val;

  bool hasSourceId() => _sourceId != null;

  // "ctime" field.
  String? _ctime;
  String get ctime => _ctime ?? '';
  set ctime(String? val) => _ctime = val;

  bool hasCtime() => _ctime != null;

  // "utime" field.
  String? _utime;
  String get utime => _utime ?? '';
  set utime(String? val) => _utime = val;

  bool hasUtime() => _utime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static WarehouseDTStruct fromMap(Map<String, dynamic> data) =>
      WarehouseDTStruct(
        id: data['id'] as String?,
        merchantId: data['merchant_id'] as String?,
        branchId: data['branch_id'] as String?,
        code: data['code'] as String?,
        name: data['name'] as String?,
        city: data['city'] as String?,
        address: data['address'] as String?,
        longitude: data['longitude'] as String?,
        latitude: data['latitude'] as String?,
        isShop: data['is_shop'] as String?,
        sourceId: data['source_id'] as String?,
        ctime: data['ctime'] as String?,
        utime: data['utime'] as String?,
        status: data['status'] as String?,
      );

  static WarehouseDTStruct? maybeFromMap(dynamic data) => data is Map
      ? WarehouseDTStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'merchant_id': _merchantId,
        'branch_id': _branchId,
        'code': _code,
        'name': _name,
        'city': _city,
        'address': _address,
        'longitude': _longitude,
        'latitude': _latitude,
        'is_shop': _isShop,
        'source_id': _sourceId,
        'ctime': _ctime,
        'utime': _utime,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'merchant_id': serializeParam(
          _merchantId,
          ParamType.String,
        ),
        'branch_id': serializeParam(
          _branchId,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
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
        'is_shop': serializeParam(
          _isShop,
          ParamType.String,
        ),
        'source_id': serializeParam(
          _sourceId,
          ParamType.String,
        ),
        'ctime': serializeParam(
          _ctime,
          ParamType.String,
        ),
        'utime': serializeParam(
          _utime,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static WarehouseDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      WarehouseDTStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        merchantId: deserializeParam(
          data['merchant_id'],
          ParamType.String,
          false,
        ),
        branchId: deserializeParam(
          data['branch_id'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
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
        isShop: deserializeParam(
          data['is_shop'],
          ParamType.String,
          false,
        ),
        sourceId: deserializeParam(
          data['source_id'],
          ParamType.String,
          false,
        ),
        ctime: deserializeParam(
          data['ctime'],
          ParamType.String,
          false,
        ),
        utime: deserializeParam(
          data['utime'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WarehouseDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WarehouseDTStruct &&
        id == other.id &&
        merchantId == other.merchantId &&
        branchId == other.branchId &&
        code == other.code &&
        name == other.name &&
        city == other.city &&
        address == other.address &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        isShop == other.isShop &&
        sourceId == other.sourceId &&
        ctime == other.ctime &&
        utime == other.utime &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        merchantId,
        branchId,
        code,
        name,
        city,
        address,
        longitude,
        latitude,
        isShop,
        sourceId,
        ctime,
        utime,
        status
      ]);
}

WarehouseDTStruct createWarehouseDTStruct({
  String? id,
  String? merchantId,
  String? branchId,
  String? code,
  String? name,
  String? city,
  String? address,
  String? longitude,
  String? latitude,
  String? isShop,
  String? sourceId,
  String? ctime,
  String? utime,
  String? status,
}) =>
    WarehouseDTStruct(
      id: id,
      merchantId: merchantId,
      branchId: branchId,
      code: code,
      name: name,
      city: city,
      address: address,
      longitude: longitude,
      latitude: latitude,
      isShop: isShop,
      sourceId: sourceId,
      ctime: ctime,
      utime: utime,
      status: status,
    );
