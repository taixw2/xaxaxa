// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoodsDTStruct extends BaseStruct {
  GoodsDTStruct({
    String? id,
    String? goodsId,
    String? name,
    String? skuName,
    String? category,
    String? unit,
    String? stockUnit,
    String? buyUnit,
    String? code,
    int? number,
    String? position,
    String? label,
    int? stockNumber,
    String? thumb,
  })  : _id = id,
        _goodsId = goodsId,
        _name = name,
        _skuName = skuName,
        _category = category,
        _unit = unit,
        _stockUnit = stockUnit,
        _buyUnit = buyUnit,
        _code = code,
        _number = number,
        _position = position,
        _label = label,
        _stockNumber = stockNumber,
        _thumb = thumb;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "goods_id" field.
  String? _goodsId;
  String get goodsId => _goodsId ?? '';
  set goodsId(String? val) => _goodsId = val;

  bool hasGoodsId() => _goodsId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "sku_name" field.
  String? _skuName;
  String get skuName => _skuName ?? '';
  set skuName(String? val) => _skuName = val;

  bool hasSkuName() => _skuName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "stock_unit" field.
  String? _stockUnit;
  String get stockUnit => _stockUnit ?? '';
  set stockUnit(String? val) => _stockUnit = val;

  bool hasStockUnit() => _stockUnit != null;

  // "buy_unit" field.
  String? _buyUnit;
  String get buyUnit => _buyUnit ?? '';
  set buyUnit(String? val) => _buyUnit = val;

  bool hasBuyUnit() => _buyUnit != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "stockNumber" field.
  int? _stockNumber;
  int get stockNumber => _stockNumber ?? 0;
  set stockNumber(int? val) => _stockNumber = val;

  void incrementStockNumber(int amount) => stockNumber = stockNumber + amount;

  bool hasStockNumber() => _stockNumber != null;

  // "thumb" field.
  String? _thumb;
  String get thumb => _thumb ?? '';
  set thumb(String? val) => _thumb = val;

  bool hasThumb() => _thumb != null;

  static GoodsDTStruct fromMap(Map<String, dynamic> data) => GoodsDTStruct(
        id: data['id'] as String?,
        goodsId: data['goods_id'] as String?,
        name: data['name'] as String?,
        skuName: data['sku_name'] as String?,
        category: data['category'] as String?,
        unit: data['unit'] as String?,
        stockUnit: data['stock_unit'] as String?,
        buyUnit: data['buy_unit'] as String?,
        code: data['code'] as String?,
        number: castToType<int>(data['number']),
        position: data['position'] as String?,
        label: data['label'] as String?,
        stockNumber: castToType<int>(data['stockNumber']),
        thumb: data['thumb'] as String?,
      );

  static GoodsDTStruct? maybeFromMap(dynamic data) =>
      data is Map ? GoodsDTStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'goods_id': _goodsId,
        'name': _name,
        'sku_name': _skuName,
        'category': _category,
        'unit': _unit,
        'stock_unit': _stockUnit,
        'buy_unit': _buyUnit,
        'code': _code,
        'number': _number,
        'position': _position,
        'label': _label,
        'stockNumber': _stockNumber,
        'thumb': _thumb,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'goods_id': serializeParam(
          _goodsId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'sku_name': serializeParam(
          _skuName,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'stock_unit': serializeParam(
          _stockUnit,
          ParamType.String,
        ),
        'buy_unit': serializeParam(
          _buyUnit,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'stockNumber': serializeParam(
          _stockNumber,
          ParamType.int,
        ),
        'thumb': serializeParam(
          _thumb,
          ParamType.String,
        ),
      }.withoutNulls;

  static GoodsDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      GoodsDTStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        goodsId: deserializeParam(
          data['goods_id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        skuName: deserializeParam(
          data['sku_name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        stockUnit: deserializeParam(
          data['stock_unit'],
          ParamType.String,
          false,
        ),
        buyUnit: deserializeParam(
          data['buy_unit'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        stockNumber: deserializeParam(
          data['stockNumber'],
          ParamType.int,
          false,
        ),
        thumb: deserializeParam(
          data['thumb'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GoodsDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GoodsDTStruct &&
        id == other.id &&
        goodsId == other.goodsId &&
        name == other.name &&
        skuName == other.skuName &&
        category == other.category &&
        unit == other.unit &&
        stockUnit == other.stockUnit &&
        buyUnit == other.buyUnit &&
        code == other.code &&
        number == other.number &&
        position == other.position &&
        label == other.label &&
        stockNumber == other.stockNumber &&
        thumb == other.thumb;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        goodsId,
        name,
        skuName,
        category,
        unit,
        stockUnit,
        buyUnit,
        code,
        number,
        position,
        label,
        stockNumber,
        thumb
      ]);
}

GoodsDTStruct createGoodsDTStruct({
  String? id,
  String? goodsId,
  String? name,
  String? skuName,
  String? category,
  String? unit,
  String? stockUnit,
  String? buyUnit,
  String? code,
  int? number,
  String? position,
  String? label,
  int? stockNumber,
  String? thumb,
}) =>
    GoodsDTStruct(
      id: id,
      goodsId: goodsId,
      name: name,
      skuName: skuName,
      category: category,
      unit: unit,
      stockUnit: stockUnit,
      buyUnit: buyUnit,
      code: code,
      number: number,
      position: position,
      label: label,
      stockNumber: stockNumber,
      thumb: thumb,
    );
