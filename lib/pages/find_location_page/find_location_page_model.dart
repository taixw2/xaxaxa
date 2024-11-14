import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'find_location_page_widget.dart' show FindLocationPageWidget;
import 'package:flutter/material.dart';

class FindLocationPageModel extends FlutterFlowModel<FindLocationPageWidget> {
  ///  Local state fields for this page.

  String? position;

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

  List<LocationDetailStruct> locationDetails = [];
  void addToLocationDetails(LocationDetailStruct item) =>
      locationDetails.add(item);
  void removeFromLocationDetails(LocationDetailStruct item) =>
      locationDetails.remove(item);
  void removeAtIndexFromLocationDetails(int index) =>
      locationDetails.removeAt(index);
  void insertAtIndexInLocationDetails(int index, LocationDetailStruct item) =>
      locationDetails.insert(index, item);
  void updateLocationDetailsAtIndex(
          int index, Function(LocationDetailStruct) updateFn) =>
      locationDetails[index] = updateFn(locationDetails[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getLocationList)] action in FindLocationPage widget.
  ApiCallResponse? apiResultaac;
  // Stores action output result for [Custom Action - findPositionIdAction] action in IconButton widget.
  String? returnPositionID;
  // Stores action output result for [Custom Action - findPositionIdAction] action in IconButton widget.
  String? returnPlusPositionID;
  // Stores action output result for [Custom Action - findPositionIdAction] action in IconButton widget.
  String? positionIdByDelete;
  // Stores action output result for [Backend Call - API (RelateGoods)] action in IconButton widget.
  ApiCallResponse? apiResultgsiCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future loadLocationDetail(
    BuildContext context, {
    String? position,
  }) async {
    String? returnPositionID;
    ApiCallResponse? locationDetailResponse;

    returnPositionID = await actions.findPositionIdAction(
      positionList.toList(),
      positionIdList.toList(),
      position,
    );
    locationDetailResponse = await StockAPIGroup.getLocationDetailCall.call(
      locationId: returnPositionID,
      warehouseId: widget!.warehouseId,
      token: FFAppState().TOKEN,
      session: FFAppState().SESSION,
    );

    if (StockAPIGroup.getLocationDetailCall.errno(
          (locationDetailResponse.jsonBody ?? ''),
        ) ==
        1) {
      locationDetails = StockAPIGroup.getLocationDetailCall
          .data(
            (locationDetailResponse.jsonBody ?? ''),
          )!
          .toList()
          .cast<LocationDetailStruct>();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '获取异常',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  }
}
