// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryOrderGoodsStruct extends BaseStruct {
  HistoryOrderGoodsStruct({
    String? goodsName,
    int? utime,
    int? goodsPrice,
    int? goodsId,
    String? goodsExtra,
    int? discount,
    int? merchantId,
    int? number,
    int? totalFee,
    int? goodsFee,
    int? ctime,
    int? id,
    int? channelId,
    int? orderId,
    String? skuCode,
    int? packageFee,
  })  : _goodsName = goodsName,
        _utime = utime,
        _goodsPrice = goodsPrice,
        _goodsId = goodsId,
        _goodsExtra = goodsExtra,
        _discount = discount,
        _merchantId = merchantId,
        _number = number,
        _totalFee = totalFee,
        _goodsFee = goodsFee,
        _ctime = ctime,
        _id = id,
        _channelId = channelId,
        _orderId = orderId,
        _skuCode = skuCode,
        _packageFee = packageFee;

  // "goods_name" field.
  String? _goodsName;
  String get goodsName => _goodsName ?? '';
  set goodsName(String? val) => _goodsName = val;

  bool hasGoodsName() => _goodsName != null;

  // "utime" field.
  int? _utime;
  int get utime => _utime ?? 0;
  set utime(int? val) => _utime = val;

  void incrementUtime(int amount) => utime = utime + amount;

  bool hasUtime() => _utime != null;

  // "goods_price" field.
  int? _goodsPrice;
  int get goodsPrice => _goodsPrice ?? 0;
  set goodsPrice(int? val) => _goodsPrice = val;

  void incrementGoodsPrice(int amount) => goodsPrice = goodsPrice + amount;

  bool hasGoodsPrice() => _goodsPrice != null;

  // "goods_id" field.
  int? _goodsId;
  int get goodsId => _goodsId ?? 0;
  set goodsId(int? val) => _goodsId = val;

  void incrementGoodsId(int amount) => goodsId = goodsId + amount;

  bool hasGoodsId() => _goodsId != null;

  // "goods_extra" field.
  String? _goodsExtra;
  String get goodsExtra => _goodsExtra ?? '';
  set goodsExtra(String? val) => _goodsExtra = val;

  bool hasGoodsExtra() => _goodsExtra != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  set discount(int? val) => _discount = val;

  void incrementDiscount(int amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "merchant_id" field.
  int? _merchantId;
  int get merchantId => _merchantId ?? 0;
  set merchantId(int? val) => _merchantId = val;

  void incrementMerchantId(int amount) => merchantId = merchantId + amount;

  bool hasMerchantId() => _merchantId != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "total_fee" field.
  int? _totalFee;
  int get totalFee => _totalFee ?? 0;
  set totalFee(int? val) => _totalFee = val;

  void incrementTotalFee(int amount) => totalFee = totalFee + amount;

  bool hasTotalFee() => _totalFee != null;

  // "goods_fee" field.
  int? _goodsFee;
  int get goodsFee => _goodsFee ?? 0;
  set goodsFee(int? val) => _goodsFee = val;

  void incrementGoodsFee(int amount) => goodsFee = goodsFee + amount;

  bool hasGoodsFee() => _goodsFee != null;

  // "ctime" field.
  int? _ctime;
  int get ctime => _ctime ?? 0;
  set ctime(int? val) => _ctime = val;

  void incrementCtime(int amount) => ctime = ctime + amount;

  bool hasCtime() => _ctime != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "channel_id" field.
  int? _channelId;
  int get channelId => _channelId ?? 0;
  set channelId(int? val) => _channelId = val;

  void incrementChannelId(int amount) => channelId = channelId + amount;

  bool hasChannelId() => _channelId != null;

  // "order_id" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  set orderId(int? val) => _orderId = val;

  void incrementOrderId(int amount) => orderId = orderId + amount;

  bool hasOrderId() => _orderId != null;

  // "sku_code" field.
  String? _skuCode;
  String get skuCode => _skuCode ?? '';
  set skuCode(String? val) => _skuCode = val;

  bool hasSkuCode() => _skuCode != null;

  // "package_fee" field.
  int? _packageFee;
  int get packageFee => _packageFee ?? 0;
  set packageFee(int? val) => _packageFee = val;

  void incrementPackageFee(int amount) => packageFee = packageFee + amount;

  bool hasPackageFee() => _packageFee != null;

  static HistoryOrderGoodsStruct fromMap(Map<String, dynamic> data) =>
      HistoryOrderGoodsStruct(
        goodsName: data['goods_name'] as String?,
        utime: castToType<int>(data['utime']),
        goodsPrice: castToType<int>(data['goods_price']),
        goodsId: castToType<int>(data['goods_id']),
        goodsExtra: data['goods_extra'] as String?,
        discount: castToType<int>(data['discount']),
        merchantId: castToType<int>(data['merchant_id']),
        number: castToType<int>(data['number']),
        totalFee: castToType<int>(data['total_fee']),
        goodsFee: castToType<int>(data['goods_fee']),
        ctime: castToType<int>(data['ctime']),
        id: castToType<int>(data['id']),
        channelId: castToType<int>(data['channel_id']),
        orderId: castToType<int>(data['order_id']),
        skuCode: data['sku_code'] as String?,
        packageFee: castToType<int>(data['package_fee']),
      );

  static HistoryOrderGoodsStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoryOrderGoodsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'goods_name': _goodsName,
        'utime': _utime,
        'goods_price': _goodsPrice,
        'goods_id': _goodsId,
        'goods_extra': _goodsExtra,
        'discount': _discount,
        'merchant_id': _merchantId,
        'number': _number,
        'total_fee': _totalFee,
        'goods_fee': _goodsFee,
        'ctime': _ctime,
        'id': _id,
        'channel_id': _channelId,
        'order_id': _orderId,
        'sku_code': _skuCode,
        'package_fee': _packageFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'goods_name': serializeParam(
          _goodsName,
          ParamType.String,
        ),
        'utime': serializeParam(
          _utime,
          ParamType.int,
        ),
        'goods_price': serializeParam(
          _goodsPrice,
          ParamType.int,
        ),
        'goods_id': serializeParam(
          _goodsId,
          ParamType.int,
        ),
        'goods_extra': serializeParam(
          _goodsExtra,
          ParamType.String,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.int,
        ),
        'merchant_id': serializeParam(
          _merchantId,
          ParamType.int,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'total_fee': serializeParam(
          _totalFee,
          ParamType.int,
        ),
        'goods_fee': serializeParam(
          _goodsFee,
          ParamType.int,
        ),
        'ctime': serializeParam(
          _ctime,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'channel_id': serializeParam(
          _channelId,
          ParamType.int,
        ),
        'order_id': serializeParam(
          _orderId,
          ParamType.int,
        ),
        'sku_code': serializeParam(
          _skuCode,
          ParamType.String,
        ),
        'package_fee': serializeParam(
          _packageFee,
          ParamType.int,
        ),
      }.withoutNulls;

  static HistoryOrderGoodsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoryOrderGoodsStruct(
        goodsName: deserializeParam(
          data['goods_name'],
          ParamType.String,
          false,
        ),
        utime: deserializeParam(
          data['utime'],
          ParamType.int,
          false,
        ),
        goodsPrice: deserializeParam(
          data['goods_price'],
          ParamType.int,
          false,
        ),
        goodsId: deserializeParam(
          data['goods_id'],
          ParamType.int,
          false,
        ),
        goodsExtra: deserializeParam(
          data['goods_extra'],
          ParamType.String,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.int,
          false,
        ),
        merchantId: deserializeParam(
          data['merchant_id'],
          ParamType.int,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        totalFee: deserializeParam(
          data['total_fee'],
          ParamType.int,
          false,
        ),
        goodsFee: deserializeParam(
          data['goods_fee'],
          ParamType.int,
          false,
        ),
        ctime: deserializeParam(
          data['ctime'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        channelId: deserializeParam(
          data['channel_id'],
          ParamType.int,
          false,
        ),
        orderId: deserializeParam(
          data['order_id'],
          ParamType.int,
          false,
        ),
        skuCode: deserializeParam(
          data['sku_code'],
          ParamType.String,
          false,
        ),
        packageFee: deserializeParam(
          data['package_fee'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HistoryOrderGoodsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoryOrderGoodsStruct &&
        goodsName == other.goodsName &&
        utime == other.utime &&
        goodsPrice == other.goodsPrice &&
        goodsId == other.goodsId &&
        goodsExtra == other.goodsExtra &&
        discount == other.discount &&
        merchantId == other.merchantId &&
        number == other.number &&
        totalFee == other.totalFee &&
        goodsFee == other.goodsFee &&
        ctime == other.ctime &&
        id == other.id &&
        channelId == other.channelId &&
        orderId == other.orderId &&
        skuCode == other.skuCode &&
        packageFee == other.packageFee;
  }

  @override
  int get hashCode => const ListEquality().hash([
        goodsName,
        utime,
        goodsPrice,
        goodsId,
        goodsExtra,
        discount,
        merchantId,
        number,
        totalFee,
        goodsFee,
        ctime,
        id,
        channelId,
        orderId,
        skuCode,
        packageFee
      ]);
}

HistoryOrderGoodsStruct createHistoryOrderGoodsStruct({
  String? goodsName,
  int? utime,
  int? goodsPrice,
  int? goodsId,
  String? goodsExtra,
  int? discount,
  int? merchantId,
  int? number,
  int? totalFee,
  int? goodsFee,
  int? ctime,
  int? id,
  int? channelId,
  int? orderId,
  String? skuCode,
  int? packageFee,
}) =>
    HistoryOrderGoodsStruct(
      goodsName: goodsName,
      utime: utime,
      goodsPrice: goodsPrice,
      goodsId: goodsId,
      goodsExtra: goodsExtra,
      discount: discount,
      merchantId: merchantId,
      number: number,
      totalFee: totalFee,
      goodsFee: goodsFee,
      ctime: ctime,
      id: id,
      channelId: channelId,
      orderId: orderId,
      skuCode: skuCode,
      packageFee: packageFee,
    );
