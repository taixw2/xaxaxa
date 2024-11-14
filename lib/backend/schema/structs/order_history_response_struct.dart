// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderHistoryResponseStruct extends BaseStruct {
  OrderHistoryResponseStruct({
    int? errno,
    String? message,
    List<OrderHistoryDataStruct>? data,
  })  : _errno = errno,
        _message = message,
        _data = data;

  // "errno" field.
  int? _errno;
  int get errno => _errno ?? 0;
  set errno(int? val) => _errno = val;

  void incrementErrno(int amount) => errno = errno + amount;

  bool hasErrno() => _errno != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "data" field.
  List<OrderHistoryDataStruct>? _data;
  List<OrderHistoryDataStruct> get data => _data ?? const [];
  set data(List<OrderHistoryDataStruct>? val) => _data = val;

  void updateData(Function(List<OrderHistoryDataStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static OrderHistoryResponseStruct fromMap(Map<String, dynamic> data) =>
      OrderHistoryResponseStruct(
        errno: castToType<int>(data['errno']),
        message: data['message'] as String?,
        data: getStructList(
          data['data'],
          OrderHistoryDataStruct.fromMap,
        ),
      );

  static OrderHistoryResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderHistoryResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'errno': _errno,
        'message': _message,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'errno': serializeParam(
          _errno,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static OrderHistoryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderHistoryResponseStruct(
        errno: deserializeParam(
          data['errno'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam<OrderHistoryDataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: OrderHistoryDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderHistoryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderHistoryResponseStruct &&
        errno == other.errno &&
        message == other.message &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([errno, message, data]);
}

OrderHistoryResponseStruct createOrderHistoryResponseStruct({
  int? errno,
  String? message,
}) =>
    OrderHistoryResponseStruct(
      errno: errno,
      message: message,
    );
