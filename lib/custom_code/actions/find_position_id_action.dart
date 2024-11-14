// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> findPositionIdAction(
  List<String>? positionList,
  List<String>? positionIdList,
  String? position,
) async {
  // Add your function code here!
  if (positionList == null || positionIdList == null) {
    return null;
  }
  if (position == null) {
    return null;
  }
  return positionIdList[positionList.indexOf(position)];
}
