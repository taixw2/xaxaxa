// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationListResponseStruct extends BaseStruct {
  LocationListResponseStruct({
    int? errno,
    String? message,
    List<LocationDataStruct>? data,
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
  List<LocationDataStruct>? _data;
  List<LocationDataStruct> get data => _data ?? const [];
  set data(List<LocationDataStruct>? val) => _data = val;

  void updateData(Function(List<LocationDataStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static LocationListResponseStruct fromMap(Map<String, dynamic> data) =>
      LocationListResponseStruct(
        errno: castToType<int>(data['errno']),
        message: data['message'] as String?,
        data: getStructList(
          data['data'],
          LocationDataStruct.fromMap,
        ),
      );

  static LocationListResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationListResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static LocationListResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LocationListResponseStruct(
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
        data: deserializeStructParam<LocationDataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: LocationDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LocationListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LocationListResponseStruct &&
        errno == other.errno &&
        message == other.message &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([errno, message, data]);
}

LocationListResponseStruct createLocationListResponseStruct({
  int? errno,
  String? message,
}) =>
    LocationListResponseStruct(
      errno: errno,
      message: message,
    );
