// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<String> goodsArrayToJSONStringify(
  String goodsId,
  int number,
) async {
  // Add your function code here!
  final List<Map<String, String>> goodsArray = [];
  goodsArray.add({'id': goodsId, 'number': number.toString()});
  String jsonString = json.encode(goodsArray);

  return jsonString.replaceAll("\"", "\\\"");
}
