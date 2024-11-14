import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_goods_item_widget.dart' show OrderGoodsItemWidget;
import 'package:flutter/material.dart';

class OrderGoodsItemModel extends FlutterFlowModel<OrderGoodsItemWidget> {
  ///  Local state fields for this component.

  GoodsDTStruct? stockGoods;
  void updateStockGoodsStruct(Function(GoodsDTStruct) updateFn) {
    updateFn(stockGoods ??= GoodsDTStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (SearchGoods)] action in OrderGoodsItem widget.
  ApiCallResponse? apiResultda9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
