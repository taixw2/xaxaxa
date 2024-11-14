// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryOrderDeliveryStruct extends BaseStruct {
  HistoryOrderDeliveryStruct({
    int? logisticMode,
    int? cancelTime,
    String? sourceNo,
    String? deliveryName,
    int? atshopTime,
    int? deliveryTime,
    String? deliveryNo,
    int? confirmTime,
    int? sendFee,
    int? sendTime,
    int? ctime,
    int? tip,
    int? id,
    int? sourceId,
    String? logisticTag,
    int? pickupTime,
    String? deliveryPhone,
    int? status,
    int? delayTime,
  })  : _logisticMode = logisticMode,
        _cancelTime = cancelTime,
        _sourceNo = sourceNo,
        _deliveryName = deliveryName,
        _atshopTime = atshopTime,
        _deliveryTime = deliveryTime,
        _deliveryNo = deliveryNo,
        _confirmTime = confirmTime,
        _sendFee = sendFee,
        _sendTime = sendTime,
        _ctime = ctime,
        _tip = tip,
        _id = id,
        _sourceId = sourceId,
        _logisticTag = logisticTag,
        _pickupTime = pickupTime,
        _deliveryPhone = deliveryPhone,
        _status = status,
        _delayTime = delayTime;

  // "logistic_mode" field.
  int? _logisticMode;
  int get logisticMode => _logisticMode ?? 0;
  set logisticMode(int? val) => _logisticMode = val;

  void incrementLogisticMode(int amount) =>
      logisticMode = logisticMode + amount;

  bool hasLogisticMode() => _logisticMode != null;

  // "cancel_time" field.
  int? _cancelTime;
  int get cancelTime => _cancelTime ?? 0;
  set cancelTime(int? val) => _cancelTime = val;

  void incrementCancelTime(int amount) => cancelTime = cancelTime + amount;

  bool hasCancelTime() => _cancelTime != null;

  // "source_no" field.
  String? _sourceNo;
  String get sourceNo => _sourceNo ?? '';
  set sourceNo(String? val) => _sourceNo = val;

  bool hasSourceNo() => _sourceNo != null;

  // "delivery_name" field.
  String? _deliveryName;
  String get deliveryName => _deliveryName ?? '';
  set deliveryName(String? val) => _deliveryName = val;

  bool hasDeliveryName() => _deliveryName != null;

  // "atshop_time" field.
  int? _atshopTime;
  int get atshopTime => _atshopTime ?? 0;
  set atshopTime(int? val) => _atshopTime = val;

  void incrementAtshopTime(int amount) => atshopTime = atshopTime + amount;

  bool hasAtshopTime() => _atshopTime != null;

  // "delivery_time" field.
  int? _deliveryTime;
  int get deliveryTime => _deliveryTime ?? 0;
  set deliveryTime(int? val) => _deliveryTime = val;

  void incrementDeliveryTime(int amount) =>
      deliveryTime = deliveryTime + amount;

  bool hasDeliveryTime() => _deliveryTime != null;

  // "delivery_no" field.
  String? _deliveryNo;
  String get deliveryNo => _deliveryNo ?? '';
  set deliveryNo(String? val) => _deliveryNo = val;

  bool hasDeliveryNo() => _deliveryNo != null;

  // "confirm_time" field.
  int? _confirmTime;
  int get confirmTime => _confirmTime ?? 0;
  set confirmTime(int? val) => _confirmTime = val;

  void incrementConfirmTime(int amount) => confirmTime = confirmTime + amount;

  bool hasConfirmTime() => _confirmTime != null;

  // "send_fee" field.
  int? _sendFee;
  int get sendFee => _sendFee ?? 0;
  set sendFee(int? val) => _sendFee = val;

  void incrementSendFee(int amount) => sendFee = sendFee + amount;

  bool hasSendFee() => _sendFee != null;

  // "send_time" field.
  int? _sendTime;
  int get sendTime => _sendTime ?? 0;
  set sendTime(int? val) => _sendTime = val;

  void incrementSendTime(int amount) => sendTime = sendTime + amount;

  bool hasSendTime() => _sendTime != null;

  // "ctime" field.
  int? _ctime;
  int get ctime => _ctime ?? 0;
  set ctime(int? val) => _ctime = val;

  void incrementCtime(int amount) => ctime = ctime + amount;

  bool hasCtime() => _ctime != null;

  // "tip" field.
  int? _tip;
  int get tip => _tip ?? 0;
  set tip(int? val) => _tip = val;

  void incrementTip(int amount) => tip = tip + amount;

  bool hasTip() => _tip != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "source_id" field.
  int? _sourceId;
  int get sourceId => _sourceId ?? 0;
  set sourceId(int? val) => _sourceId = val;

  void incrementSourceId(int amount) => sourceId = sourceId + amount;

  bool hasSourceId() => _sourceId != null;

  // "logistic_tag" field.
  String? _logisticTag;
  String get logisticTag => _logisticTag ?? '';
  set logisticTag(String? val) => _logisticTag = val;

  bool hasLogisticTag() => _logisticTag != null;

  // "pickup_time" field.
  int? _pickupTime;
  int get pickupTime => _pickupTime ?? 0;
  set pickupTime(int? val) => _pickupTime = val;

  void incrementPickupTime(int amount) => pickupTime = pickupTime + amount;

  bool hasPickupTime() => _pickupTime != null;

  // "delivery_phone" field.
  String? _deliveryPhone;
  String get deliveryPhone => _deliveryPhone ?? '';
  set deliveryPhone(String? val) => _deliveryPhone = val;

  bool hasDeliveryPhone() => _deliveryPhone != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "delay_time" field.
  int? _delayTime;
  int get delayTime => _delayTime ?? 0;
  set delayTime(int? val) => _delayTime = val;

  void incrementDelayTime(int amount) => delayTime = delayTime + amount;

  bool hasDelayTime() => _delayTime != null;

  static HistoryOrderDeliveryStruct fromMap(Map<String, dynamic> data) =>
      HistoryOrderDeliveryStruct(
        logisticMode: castToType<int>(data['logistic_mode']),
        cancelTime: castToType<int>(data['cancel_time']),
        sourceNo: data['source_no'] as String?,
        deliveryName: data['delivery_name'] as String?,
        atshopTime: castToType<int>(data['atshop_time']),
        deliveryTime: castToType<int>(data['delivery_time']),
        deliveryNo: data['delivery_no'] as String?,
        confirmTime: castToType<int>(data['confirm_time']),
        sendFee: castToType<int>(data['send_fee']),
        sendTime: castToType<int>(data['send_time']),
        ctime: castToType<int>(data['ctime']),
        tip: castToType<int>(data['tip']),
        id: castToType<int>(data['id']),
        sourceId: castToType<int>(data['source_id']),
        logisticTag: data['logistic_tag'] as String?,
        pickupTime: castToType<int>(data['pickup_time']),
        deliveryPhone: data['delivery_phone'] as String?,
        status: castToType<int>(data['status']),
        delayTime: castToType<int>(data['delay_time']),
      );

  static HistoryOrderDeliveryStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoryOrderDeliveryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'logistic_mode': _logisticMode,
        'cancel_time': _cancelTime,
        'source_no': _sourceNo,
        'delivery_name': _deliveryName,
        'atshop_time': _atshopTime,
        'delivery_time': _deliveryTime,
        'delivery_no': _deliveryNo,
        'confirm_time': _confirmTime,
        'send_fee': _sendFee,
        'send_time': _sendTime,
        'ctime': _ctime,
        'tip': _tip,
        'id': _id,
        'source_id': _sourceId,
        'logistic_tag': _logisticTag,
        'pickup_time': _pickupTime,
        'delivery_phone': _deliveryPhone,
        'status': _status,
        'delay_time': _delayTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logistic_mode': serializeParam(
          _logisticMode,
          ParamType.int,
        ),
        'cancel_time': serializeParam(
          _cancelTime,
          ParamType.int,
        ),
        'source_no': serializeParam(
          _sourceNo,
          ParamType.String,
        ),
        'delivery_name': serializeParam(
          _deliveryName,
          ParamType.String,
        ),
        'atshop_time': serializeParam(
          _atshopTime,
          ParamType.int,
        ),
        'delivery_time': serializeParam(
          _deliveryTime,
          ParamType.int,
        ),
        'delivery_no': serializeParam(
          _deliveryNo,
          ParamType.String,
        ),
        'confirm_time': serializeParam(
          _confirmTime,
          ParamType.int,
        ),
        'send_fee': serializeParam(
          _sendFee,
          ParamType.int,
        ),
        'send_time': serializeParam(
          _sendTime,
          ParamType.int,
        ),
        'ctime': serializeParam(
          _ctime,
          ParamType.int,
        ),
        'tip': serializeParam(
          _tip,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'source_id': serializeParam(
          _sourceId,
          ParamType.int,
        ),
        'logistic_tag': serializeParam(
          _logisticTag,
          ParamType.String,
        ),
        'pickup_time': serializeParam(
          _pickupTime,
          ParamType.int,
        ),
        'delivery_phone': serializeParam(
          _deliveryPhone,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'delay_time': serializeParam(
          _delayTime,
          ParamType.int,
        ),
      }.withoutNulls;

  static HistoryOrderDeliveryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoryOrderDeliveryStruct(
        logisticMode: deserializeParam(
          data['logistic_mode'],
          ParamType.int,
          false,
        ),
        cancelTime: deserializeParam(
          data['cancel_time'],
          ParamType.int,
          false,
        ),
        sourceNo: deserializeParam(
          data['source_no'],
          ParamType.String,
          false,
        ),
        deliveryName: deserializeParam(
          data['delivery_name'],
          ParamType.String,
          false,
        ),
        atshopTime: deserializeParam(
          data['atshop_time'],
          ParamType.int,
          false,
        ),
        deliveryTime: deserializeParam(
          data['delivery_time'],
          ParamType.int,
          false,
        ),
        deliveryNo: deserializeParam(
          data['delivery_no'],
          ParamType.String,
          false,
        ),
        confirmTime: deserializeParam(
          data['confirm_time'],
          ParamType.int,
          false,
        ),
        sendFee: deserializeParam(
          data['send_fee'],
          ParamType.int,
          false,
        ),
        sendTime: deserializeParam(
          data['send_time'],
          ParamType.int,
          false,
        ),
        ctime: deserializeParam(
          data['ctime'],
          ParamType.int,
          false,
        ),
        tip: deserializeParam(
          data['tip'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        sourceId: deserializeParam(
          data['source_id'],
          ParamType.int,
          false,
        ),
        logisticTag: deserializeParam(
          data['logistic_tag'],
          ParamType.String,
          false,
        ),
        pickupTime: deserializeParam(
          data['pickup_time'],
          ParamType.int,
          false,
        ),
        deliveryPhone: deserializeParam(
          data['delivery_phone'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        delayTime: deserializeParam(
          data['delay_time'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HistoryOrderDeliveryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoryOrderDeliveryStruct &&
        logisticMode == other.logisticMode &&
        cancelTime == other.cancelTime &&
        sourceNo == other.sourceNo &&
        deliveryName == other.deliveryName &&
        atshopTime == other.atshopTime &&
        deliveryTime == other.deliveryTime &&
        deliveryNo == other.deliveryNo &&
        confirmTime == other.confirmTime &&
        sendFee == other.sendFee &&
        sendTime == other.sendTime &&
        ctime == other.ctime &&
        tip == other.tip &&
        id == other.id &&
        sourceId == other.sourceId &&
        logisticTag == other.logisticTag &&
        pickupTime == other.pickupTime &&
        deliveryPhone == other.deliveryPhone &&
        status == other.status &&
        delayTime == other.delayTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        logisticMode,
        cancelTime,
        sourceNo,
        deliveryName,
        atshopTime,
        deliveryTime,
        deliveryNo,
        confirmTime,
        sendFee,
        sendTime,
        ctime,
        tip,
        id,
        sourceId,
        logisticTag,
        pickupTime,
        deliveryPhone,
        status,
        delayTime
      ]);
}

HistoryOrderDeliveryStruct createHistoryOrderDeliveryStruct({
  int? logisticMode,
  int? cancelTime,
  String? sourceNo,
  String? deliveryName,
  int? atshopTime,
  int? deliveryTime,
  String? deliveryNo,
  int? confirmTime,
  int? sendFee,
  int? sendTime,
  int? ctime,
  int? tip,
  int? id,
  int? sourceId,
  String? logisticTag,
  int? pickupTime,
  String? deliveryPhone,
  int? status,
  int? delayTime,
}) =>
    HistoryOrderDeliveryStruct(
      logisticMode: logisticMode,
      cancelTime: cancelTime,
      sourceNo: sourceNo,
      deliveryName: deliveryName,
      atshopTime: atshopTime,
      deliveryTime: deliveryTime,
      deliveryNo: deliveryNo,
      confirmTime: confirmTime,
      sendFee: sendFee,
      sendTime: sendTime,
      ctime: ctime,
      tip: tip,
      id: id,
      sourceId: sourceId,
      logisticTag: logisticTag,
      pickupTime: pickupTime,
      deliveryPhone: deliveryPhone,
      status: status,
      delayTime: delayTime,
    );
