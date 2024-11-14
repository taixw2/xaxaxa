import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'order_goods_item_model.dart';
export 'order_goods_item_model.dart';

class OrderGoodsItemWidget extends StatefulWidget {
  const OrderGoodsItemWidget({
    super.key,
    required this.goodsName,
    required this.skuCode,
    required this.warehouseId,
  });

  final String? goodsName;
  final String? skuCode;
  final String? warehouseId;

  @override
  State<OrderGoodsItemWidget> createState() => _OrderGoodsItemWidgetState();
}

class _OrderGoodsItemWidgetState extends State<OrderGoodsItemWidget> {
  late OrderGoodsItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderGoodsItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultda9 = await StockAPIGroup.searchGoodsCall.call(
        keyword: widget.skuCode,
        warehouseId: widget.warehouseId,
        token: FFAppState().TOKEN,
        session: FFAppState().SESSION,
      );

      if ((_model.apiResultda9?.succeeded ?? true)) {
        _model.stockGoods = StockAPIGroup.searchGoodsCall
            .goods(
              (_model.apiResultda9?.jsonBody ?? ''),
            )
            ?.first;
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      constraints: const BoxConstraints(
        minHeight: 44.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent2,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget.goodsName,
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Open Sans',
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '货架号：${valueOrDefault<String>(
                        _model.stockGoods?.position,
                        '未入库',
                      )}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      '库存数量：${valueOrDefault<String>(
                        _model.stockGoods?.stockNumber.toString(),
                        '0',
                      )}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '货号${widget.skuCode}',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    if (_model.stockGoods?.position != null &&
                        _model.stockGoods?.position != '')
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '出库',
                        options: FFButtonOptions(
                          height: 26.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 4.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
              ],
            ),
          ].divide(const SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
