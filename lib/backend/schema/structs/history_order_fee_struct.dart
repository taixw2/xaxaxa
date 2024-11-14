// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryOrderFeeStruct extends BaseStruct {
  HistoryOrderFeeStruct({
    int? sendFee,
    int? packageFee,
    int? discountFee,
    int? shopFee,
    int? userFee,
  })  : _sendFee = sendFee,
        _packageFee = packageFee,
        _discountFee = discountFee,
        _shopFee = shopFee,
        _userFee = userFee;

  // "send_fee" field.
  int? _sendFee;
  int get sendFee => _sendFee ?? 0;
  set sendFee(int? val) => _sendFee = val;

  void incrementSendFee(int amount) => sendFee = sendFee + amount;

  bool hasSendFee() => _sendFee != null;

  // "package_fee" field.
  int? _packageFee;
  int get packageFee => _packageFee ?? 0;
  set packageFee(int? val) => _packageFee = val;

  void incrementPackageFee(int amount) => packageFee = packageFee + amount;

  bool hasPackageFee() => _packageFee != null;

  // "discount_fee" field.
  int? _discountFee;
  int get discountFee => _discountFee ?? 0;
  set discountFee(int? val) => _discountFee = val;

  void incrementDiscountFee(int amount) => discountFee = discountFee + amount;

  bool hasDiscountFee() => _discountFee != null;

  // "shop_fee" field.
  int? _shopFee;
  int get shopFee => _shopFee ?? 0;
  set shopFee(int? val) => _shopFee = val;

  void incrementShopFee(int amount) => shopFee = shopFee + amount;

  bool hasShopFee() => _shopFee != null;

  // "user_fee" field.
  int? _userFee;
  int get userFee => _userFee ?? 0;
  set userFee(int? val) => _userFee = val;

  void incrementUserFee(int amount) => userFee = userFee + amount;

  bool hasUserFee() => _userFee != null;

  static HistoryOrderFeeStruct fromMap(Map<String, dynamic> data) =>
      HistoryOrderFeeStruct(
        sendFee: castToType<int>(data['send_fee']),
        packageFee: castToType<int>(data['package_fee']),
        discountFee: castToType<int>(data['discount_fee']),
        shopFee: castToType<int>(data['shop_fee']),
        userFee: castToType<int>(data['user_fee']),
      );

  static HistoryOrderFeeStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoryOrderFeeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'send_fee': _sendFee,
        'package_fee': _packageFee,
        'discount_fee': _discountFee,
        'shop_fee': _shopFee,
        'user_fee': _userFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'send_fee': serializeParam(
          _sendFee,
          ParamType.int,
        ),
        'package_fee': serializeParam(
          _packageFee,
          ParamType.int,
        ),
        'discount_fee': serializeParam(
          _discountFee,
          ParamType.int,
        ),
        'shop_fee': serializeParam(
          _shopFee,
          ParamType.int,
        ),
        'user_fee': serializeParam(
          _userFee,
          ParamType.int,
        ),
      }.withoutNulls;

  static HistoryOrderFeeStruct fromSerializableMap(Map<String, dynamic> data) =>
      HistoryOrderFeeStruct(
        sendFee: deserializeParam(
          data['send_fee'],
          ParamType.int,
          false,
        ),
        packageFee: deserializeParam(
          data['package_fee'],
          ParamType.int,
          false,
        ),
        discountFee: deserializeParam(
          data['discount_fee'],
          ParamType.int,
          false,
        ),
        shopFee: deserializeParam(
          data['shop_fee'],
          ParamType.int,
          false,
        ),
        userFee: deserializeParam(
          data['user_fee'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HistoryOrderFeeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoryOrderFeeStruct &&
        sendFee == other.sendFee &&
        packageFee == other.packageFee &&
        discountFee == other.discountFee &&
        shopFee == other.shopFee &&
        userFee == other.userFee;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([sendFee, packageFee, discountFee, shopFee, userFee]);
}

HistoryOrderFeeStruct createHistoryOrderFeeStruct({
  int? sendFee,
  int? packageFee,
  int? discountFee,
  int? shopFee,
  int? userFee,
}) =>
    HistoryOrderFeeStruct(
      sendFee: sendFee,
      packageFee: packageFee,
      discountFee: discountFee,
      shopFee: shopFee,
      userFee: userFee,
    );
