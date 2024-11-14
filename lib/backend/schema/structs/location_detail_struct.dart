// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationDetailStruct extends BaseStruct {
  LocationDetailStruct({
    String? id,
    String? merchantId,
    String? warehouseId,
    String? goodsId,
    String? stockNumber,
    String? position,
    String? ctime,
    String? utime,
    String? status,
    String? name,
    String? code,
    String? unit,
    String? number,
  })  : _id = id,
        _merchantId = merchantId,
        _warehouseId = warehouseId,
        _goodsId = goodsId,
        _stockNumber = stockNumber,
        _position = position,
        _ctime = ctime,
        _utime = utime,
        _status = status,
        _name = name,
        _code = code,
        _unit = unit,
        _number = number;

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

  // "warehouse_id" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  set warehouseId(String? val) => _warehouseId = val;

  bool hasWarehouseId() => _warehouseId != null;

  // "goods_id" field.
  String? _goodsId;
  String get goodsId => _goodsId ?? '';
  set goodsId(String? val) => _goodsId = val;

  bool hasGoodsId() => _goodsId != null;

  // "stock_number" field.
  String? _stockNumber;
  String get stockNumber => _stockNumber ?? '';
  set stockNumber(String? val) => _stockNumber = val;

  bool hasStockNumber() => _stockNumber != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  static LocationDetailStruct fromMap(Map<String, dynamic> data) =>
      LocationDetailStruct(
        id: data['id'] as String?,
        merchantId: data['merchant_id'] as String?,
        warehouseId: data['warehouse_id'] as String?,
        goodsId: data['goods_id'] as String?,
        stockNumber: data['stock_number'] as String?,
        position: data['position'] as String?,
        ctime: data['ctime'] as String?,
        utime: data['utime'] as String?,
        status: data['status'] as String?,
        name: data['name'] as String?,
        code: data['code'] as String?,
        unit: data['unit'] as String?,
        number: data['number'] as String?,
      );

  static LocationDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'merchant_id': _merchantId,
        'warehouse_id': _warehouseId,
        'goods_id': _goodsId,
        'stock_number': _stockNumber,
        'position': _position,
        'ctime': _ctime,
        'utime': _utime,
        'status': _status,
        'name': _name,
        'code': _code,
        'unit': _unit,
        'number': _number,
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
        'warehouse_id': serializeParam(
          _warehouseId,
          ParamType.String,
        ),
        'goods_id': serializeParam(
          _goodsId,
          ParamType.String,
        ),
        'stock_number': serializeParam(
          _stockNumber,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocationDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationDetailStruct(
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
        warehouseId: deserializeParam(
          data['warehouse_id'],
          ParamType.String,
          false,
        ),
        goodsId: deserializeParam(
          data['goods_id'],
          ParamType.String,
          false,
        ),
        stockNumber: deserializeParam(
          data['stock_number'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocationDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationDetailStruct &&
        id == other.id &&
        merchantId == other.merchantId &&
        warehouseId == other.warehouseId &&
        goodsId == other.goodsId &&
        stockNumber == other.stockNumber &&
        position == other.position &&
        ctime == other.ctime &&
        utime == other.utime &&
        status == other.status &&
        name == other.name &&
        code == other.code &&
        unit == other.unit &&
        number == other.number;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        merchantId,
        warehouseId,
        goodsId,
        stockNumber,
        position,
        ctime,
        utime,
        status,
        name,
        code,
        unit,
        number
      ]);
}

LocationDetailStruct createLocationDetailStruct({
  String? id,
  String? merchantId,
  String? warehouseId,
  String? goodsId,
  String? stockNumber,
  String? position,
  String? ctime,
  String? utime,
  String? status,
  String? name,
  String? code,
  String? unit,
  String? number,
}) =>
    LocationDetailStruct(
      id: id,
      merchantId: merchantId,
      warehouseId: warehouseId,
      goodsId: goodsId,
      stockNumber: stockNumber,
      position: position,
      ctime: ctime,
      utime: utime,
      status: status,
      name: name,
      code: code,
      unit: unit,
      number: number,
    );
