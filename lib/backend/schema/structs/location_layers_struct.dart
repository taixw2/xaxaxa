// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationLayersStruct extends BaseStruct {
  LocationLayersStruct({
    int? code,
    List<LocationTagsStruct>? tags,
  })  : _code = code,
        _tags = tags;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  // "tags" field.
  List<LocationTagsStruct>? _tags;
  List<LocationTagsStruct> get tags => _tags ?? const [];
  set tags(List<LocationTagsStruct>? val) => _tags = val;

  void updateTags(Function(List<LocationTagsStruct>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  static LocationLayersStruct fromMap(Map<String, dynamic> data) =>
      LocationLayersStruct(
        code: castToType<int>(data['code']),
        tags: getStructList(
          data['tags'],
          LocationTagsStruct.fromMap,
        ),
      );

  static LocationLayersStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationLayersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'tags': _tags?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LocationLayersStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationLayersStruct(
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        tags: deserializeStructParam<LocationTagsStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: LocationTagsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LocationLayersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LocationLayersStruct &&
        code == other.code &&
        listEquality.equals(tags, other.tags);
  }

  @override
  int get hashCode => const ListEquality().hash([code, tags]);
}

LocationLayersStruct createLocationLayersStruct({
  int? code,
}) =>
    LocationLayersStruct(
      code: code,
    );
