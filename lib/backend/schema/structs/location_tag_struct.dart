// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationTagStruct extends BaseStruct {
  LocationTagStruct({
    String? id,
    String? code,
    String? number,
    String? position,
  })  : _id = id,
        _code = code,
        _number = number,
        _position = position;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  static LocationTagStruct fromMap(Map<String, dynamic> data) =>
      LocationTagStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        number: data['number'] as String?,
        position: data['position'] as String?,
      );

  static LocationTagStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationTagStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'number': _number,
        'position': _position,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocationTagStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationTagStruct(
        id: deserializeParam(
          data['id'],
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
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocationTagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationTagStruct &&
        id == other.id &&
        code == other.code &&
        number == other.number &&
        position == other.position;
  }

  @override
  int get hashCode => const ListEquality().hash([id, code, number, position]);
}

LocationTagStruct createLocationTagStruct({
  String? id,
  String? code,
  String? number,
  String? position,
}) =>
    LocationTagStruct(
      id: id,
      code: code,
      number: number,
      position: position,
    );
