import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future<bool?> goodsRelation(
  BuildContext context, {
  String? goodsId,
  int? number,
  required String? positionId,
}) async {
  String? goodsJSON;
  ApiCallResponse? relateGoodsResponse;

  goodsJSON = await actions.goodsArrayToJSONStringify(
    goodsId!,
    number!,
  );
  relateGoodsResponse = await StockAPIGroup.relateGoodsCall.call(
    goods: goodsJSON,
    position: positionId,
    token: FFAppState().TOKEN,
    session: FFAppState().SESSION,
  );

  if (StockAPIGroup.relateGoodsCall.errno(
        (relateGoodsResponse.jsonBody ?? ''),
      ) ==
      1) {
    return true;
  }

  return false;
}
