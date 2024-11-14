import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/order_goods_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'order_page_model.dart';
export 'order_page_model.dart';

class OrderPageWidget extends StatefulWidget {
  const OrderPageWidget({super.key});

  @override
  State<OrderPageWidget> createState() => _OrderPageWidgetState();
}

class _OrderPageWidgetState extends State<OrderPageWidget> {
  late OrderPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.filterDate = dateTimeFormat(
          "y-M-d",
          dateTimeFromSecondsSinceEpoch(
              getCurrentTimestamp.millisecondsSinceEpoch));
      safeSetState(() {});
      _model.apiResultf88 = await StockAPIGroup.getWarehouseListCall.call(
        token: FFAppState().TOKEN,
        session: FFAppState().SESSION,
      );

      if ((_model.apiResultf88?.succeeded ?? true)) {
        _model.warehouseList = StockAPIGroup.getWarehouseListCall
            .data(
              (_model.apiResultf88?.jsonBody ?? ''),
            )!
            .toList()
            .cast<WarehouseDTStruct>();
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            '今日订单列表',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: RefreshIndicator(
              color: FlutterFlowTheme.of(context).primary,
              onRefresh: () async {
                safeSetState(() => _model.listViewPagingController?.refresh());
                await _model.waitForOnePageForListView();
              },
              child: PagedListView<ApiPagingParams, dynamic>.separated(
                pagingController: _model.setListViewController(
                  (nextPageMarker) => SaasAPIGroup.getHistoryOrdersCall.call(
                    page: valueOrDefault<int>(
                      nextPageMarker.nextPageNumber,
                      1,
                    ),
                    filterDate: dateTimeFormat(
                        "y-M-d",
                        dateTimeFromSecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch)),
                    token: FFAppState().TOKEN,
                    session: FFAppState().SESSION,
                  ),
                ),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                reverse: false,
                scrollDirection: Axis.vertical,
                separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                builderDelegate: PagedChildBuilderDelegate<dynamic>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  ),
                  // Customize what your widget looks like when it's loading another page.
                  newPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  ),

                  itemBuilder: (context, _, orderListIndex) {
                    final orderListItem = _model
                        .listViewPagingController!.itemList![orderListIndex];
                    return Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      constraints: const BoxConstraints(
                        minHeight: 100.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '#${orderListItem.sourceSn.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 4.0)),
                                ),
                                Text(
                                  orderListItem.tips,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent2,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Builder(
                                builder: (context) {
                                  final orderGoods =
                                      orderListItem.goods.toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(orderGoods.length,
                                        (orderGoodsIndex) {
                                      final orderGoodsItem =
                                          orderGoods[orderGoodsIndex];
                                      return OrderGoodsItemWidget(
                                        key: Key(
                                            'Keylur_${orderGoodsIndex}_of_${orderGoods.length}'),
                                        goodsName: valueOrDefault<String>(
                                          orderGoodsItem.goodsName,
                                          '-',
                                        ),
                                        skuCode: valueOrDefault<String>(
                                          orderGoodsItem.skuCode,
                                          '-',
                                        ),
                                        warehouseId: valueOrDefault<String>(
                                          functions.findWarehouseIdFN(
                                              orderListItem.shopId.toString(),
                                              _model.warehouseList.toList()),
                                          '-',
                                        ),
                                      );
                                    }).divide(const SizedBox(height: 4.0)),
                                  );
                                },
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent2,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    orderListItem.channelTagName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    orderListItem.shop.name,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
