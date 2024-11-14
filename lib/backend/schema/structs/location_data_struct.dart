// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationDataStruct extends BaseStruct {
  LocationDataStruct({
    String? area,
    List<LocationBoxsStruct>? boxs,
  })  : _area = area,
        _boxs = boxs;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;

  bool hasArea() => _area != null;

  // "boxs" field.
  List<LocationBoxsStruct>? _boxs;
  List<LocationBoxsStruct> get boxs => _boxs ?? const [];
  set boxs(List<LocationBoxsStruct>? val) => _boxs = val;

  void updateBoxs(Function(List<LocationBoxsStruct>) updateFn) {
    updateFn(_boxs ??= []);
  }

  bool hasBoxs() => _boxs != null;

  static LocationDataStruct fromMap(Map<String, dynamic> data) =>
      LocationDataStruct(
        area: data['area'] as String?,
        boxs: getStructList(
          data['boxs'],
          LocationBoxsStruct.fromMap,
        ),
      );

  static LocationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'area': _area,
        'boxs': _boxs?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'area': serializeParam(
          _area,
          ParamType.String,
        ),
        'boxs': serializeParam(
          _boxs,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LocationDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationDataStruct(
        area: deserializeParam(
          data['area'],
          ParamType.String,
          false,
        ),
        boxs: deserializeStructParam<LocationBoxsStruct>(
          data['boxs'],
          ParamType.DataStruct,
          true,
          structBuilder: LocationBoxsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LocationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LocationDataStruct &&
        area == other.area &&
        listEquality.equals(boxs, other.boxs);
  }

  @override
  int get hashCode => const ListEquality().hash([area, boxs]);
}

LocationDataStruct createLocationDataStruct({
  String? area,
}) =>
    LocationDataStruct(
      area: area,
    );
