import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'order_page_widget.dart' show OrderPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OrderPageModel extends FlutterFlowModel<OrderPageWidget> {
  ///  Local state fields for this page.

  String? filterDate;

  List<WarehouseDTStruct> warehouseList = [];
  void addToWarehouseList(WarehouseDTStruct item) => warehouseList.add(item);
  void removeFromWarehouseList(WarehouseDTStruct item) =>
      warehouseList.remove(item);
  void removeAtIndexFromWarehouseList(int index) =>
      warehouseList.removeAt(index);
  void insertAtIndexInWarehouseList(int index, WarehouseDTStruct item) =>
      warehouseList.insert(index, item);
  void updateWarehouseListAtIndex(
          int index, Function(WarehouseDTStruct) updateFn) =>
      warehouseList[index] = updateFn(warehouseList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetWarehouseList)] action in OrderPage widget.
  ApiCallResponse? apiResultf88;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    listViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewGetHistoryOrdersPage);
  }

  void listViewGetHistoryOrdersPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewGetHistoryOrdersResponse) {
        final pageItems = (SaasAPIGroup.getHistoryOrdersCall.data(
                  listViewGetHistoryOrdersResponse.jsonBody,
                )! ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewGetHistoryOrdersResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
