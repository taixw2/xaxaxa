// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationBoxsStruct extends BaseStruct {
  LocationBoxsStruct({
    String? code,
    String? prefix,
    List<LocationLayersStruct>? layers,
  })  : _code = code,
        _prefix = prefix,
        _layers = layers;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "prefix" field.
  String? _prefix;
  String get prefix => _prefix ?? '';
  set prefix(String? val) => _prefix = val;

  bool hasPrefix() => _prefix != null;

  // "layers" field.
  List<LocationLayersStruct>? _layers;
  List<LocationLayersStruct> get layers => _layers ?? const [];
  set layers(List<LocationLayersStruct>? val) => _layers = val;

  void updateLayers(Function(List<LocationLayersStruct>) updateFn) {
    updateFn(_layers ??= []);
  }

  bool hasLayers() => _layers != null;

  static LocationBoxsStruct fromMap(Map<String, dynamic> data) =>
      LocationBoxsStruct(
        code: data['code'] as String?,
        prefix: data['prefix'] as String?,
        layers: getStructList(
          data['layers'],
          LocationLayersStruct.fromMap,
        ),
      );

  static LocationBoxsStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationBoxsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'prefix': _prefix,
        'layers': _layers?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'prefix': serializeParam(
          _prefix,
          ParamType.String,
        ),
        'layers': serializeParam(
          _layers,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LocationBoxsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationBoxsStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        prefix: deserializeParam(
          data['prefix'],
          ParamType.String,
          false,
        ),
        layers: deserializeStructParam<LocationLayersStruct>(
          data['layers'],
          ParamType.DataStruct,
          true,
          structBuilder: LocationLayersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LocationBoxsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LocationBoxsStruct &&
        code == other.code &&
        prefix == other.prefix &&
        listEquality.equals(layers, other.layers);
  }

  @override
  int get hashCode => const ListEquality().hash([code, prefix, layers]);
}

LocationBoxsStruct createLocationBoxsStruct({
  String? code,
  String? prefix,
}) =>
    LocationBoxsStruct(
      code: code,
      prefix: prefix,
    );
