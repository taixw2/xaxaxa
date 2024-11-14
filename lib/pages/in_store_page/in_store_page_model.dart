import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'in_store_page_widget.dart' show InStorePageWidget;
import 'package:flutter/material.dart';

class InStorePageModel extends FlutterFlowModel<InStorePageWidget> {
  ///  Local state fields for this page.

  String? position;

  GoodsDTStruct? selectedGoods;
  void updateSelectedGoodsStruct(Function(GoodsDTStruct) updateFn) {
    updateFn(selectedGoods ??= GoodsDTStruct());
  }

  List<String> positionList = [];
  void addToPositionList(String item) => positionList.add(item);
  void removeFromPositionList(String item) => positionList.remove(item);
  void removeAtIndexFromPositionList(int index) => positionList.removeAt(index);
  void insertAtIndexInPositionList(int index, String item) =>
      positionList.insert(index, item);
  void updatePositionListAtIndex(int index, Function(String) updateFn) =>
      positionList[index] = updateFn(positionList[index]);

  List<String> positionIdList = [];
  void addToPositionIdList(String item) => positionIdList.add(item);
  void removeFromPositionIdList(String item) => positionIdList.remove(item);
  void removeAtIndexFromPositionIdList(int index) =>
      positionIdList.removeAt(index);
  void insertAtIndexInPositionIdList(int index, String item) =>
      positionIdList.insert(index, item);
  void updatePositionIdListAtIndex(int index, Function(String) updateFn) =>
      positionIdList[index] = updateFn(positionIdList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getLocationList)] action in InStorePage widget.
  ApiCallResponse? apiResultaac;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - findPositionIdAction] action in Button widget.
  String? positionId;
  // Stores action output result for [Action Block - goodsRelation] action in Button widget.
  bool? relationResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
