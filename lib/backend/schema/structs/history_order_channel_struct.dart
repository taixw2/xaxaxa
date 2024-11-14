// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryOrderChannelStruct extends BaseStruct {
  HistoryOrderChannelStruct({
    String? id,
    String? name,
    String? tag,
    String? categoryGroup,
    String? category,
    String? categoryId,
    String? sourceKey,
  })  : _id = id,
        _name = name,
        _tag = tag,
        _categoryGroup = categoryGroup,
        _category = category,
        _categoryId = categoryId,
        _sourceKey = sourceKey;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;

  bool hasTag() => _tag != null;

  // "category_group" field.
  String? _categoryGroup;
  String get categoryGroup => _categoryGroup ?? '';
  set categoryGroup(String? val) => _categoryGroup = val;

  bool hasCategoryGroup() => _categoryGroup != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "source_key" field.
  String? _sourceKey;
  String get sourceKey => _sourceKey ?? '';
  set sourceKey(String? val) => _sourceKey = val;

  bool hasSourceKey() => _sourceKey != null;

  static HistoryOrderChannelStruct fromMap(Map<String, dynamic> data) =>
      HistoryOrderChannelStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        tag: data['tag'] as String?,
        categoryGroup: data['category_group'] as String?,
        category: data['category'] as String?,
        categoryId: data['category_id'] as String?,
        sourceKey: data['source_key'] as String?,
      );

  static HistoryOrderChannelStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoryOrderChannelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'tag': _tag,
        'category_group': _categoryGroup,
        'category': _category,
        'category_id': _categoryId,
        'source_key': _sourceKey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'category_group': serializeParam(
          _categoryGroup,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'source_key': serializeParam(
          _sourceKey,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistoryOrderChannelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoryOrderChannelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        categoryGroup: deserializeParam(
          data['category_group'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.String,
          false,
        ),
        sourceKey: deserializeParam(
          data['source_key'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistoryOrderChannelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoryOrderChannelStruct &&
        id == other.id &&
        name == other.name &&
        tag == other.tag &&
        categoryGroup == other.categoryGroup &&
        category == other.category &&
        categoryId == other.categoryId &&
        sourceKey == other.sourceKey;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, tag, categoryGroup, category, categoryId, sourceKey]);
}

HistoryOrderChannelStruct createHistoryOrderChannelStruct({
  String? id,
  String? name,
  String? tag,
  String? categoryGroup,
  String? category,
  String? categoryId,
  String? sourceKey,
}) =>
    HistoryOrderChannelStruct(
      id: id,
      name: name,
      tag: tag,
      categoryGroup: categoryGroup,
      category: category,
      categoryId: categoryId,
      sourceKey: sourceKey,
    );
