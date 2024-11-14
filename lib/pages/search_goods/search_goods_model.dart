import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_goods_widget.dart' show SearchGoodsWidget;
import 'package:flutter/material.dart';

class SearchGoodsModel extends FlutterFlowModel<SearchGoodsWidget> {
  ///  Local state fields for this page.

  List<GoodsDTStruct> goodsList = [];
  void addToGoodsList(GoodsDTStruct item) => goodsList.add(item);
  void removeFromGoodsList(GoodsDTStruct item) => goodsList.remove(item);
  void removeAtIndexFromGoodsList(int index) => goodsList.removeAt(index);
  void insertAtIndexInGoodsList(int index, GoodsDTStruct item) =>
      goodsList.insert(index, item);
  void updateGoodsListAtIndex(int index, Function(GoodsDTStruct) updateFn) =>
      goodsList[index] = updateFn(goodsList[index]);

  List<GoodsDTStruct> recentList = [];
  void addToRecentList(GoodsDTStruct item) => recentList.add(item);
  void removeFromRecentList(GoodsDTStruct item) => recentList.remove(item);
  void removeAtIndexFromRecentList(int index) => recentList.removeAt(index);
  void insertAtIndexInRecentList(int index, GoodsDTStruct item) =>
      recentList.insert(index, item);
  void updateRecentListAtIndex(int index, Function(GoodsDTStruct) updateFn) =>
      recentList[index] = updateFn(recentList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (SearchGoods)] action in TextField widget.
  ApiCallResponse? apiResulttu9;
  // Stores action output result for [Backend Call - API (SearchGoods)] action in IconButton widget.
  ApiCallResponse? apiResulttu9Copy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
