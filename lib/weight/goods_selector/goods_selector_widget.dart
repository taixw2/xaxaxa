import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'goods_selector_model.dart';
export 'goods_selector_model.dart';

class GoodsSelectorWidget extends StatefulWidget {
  const GoodsSelectorWidget({
    super.key,
    required this.warehouseId,
    required this.onSelect,
  });

  final String? warehouseId;
  final Future Function(GoodsDTStruct goods)? onSelect;

  @override
  State<GoodsSelectorWidget> createState() => _GoodsSelectorWidgetState();
}

class _GoodsSelectorWidgetState extends State<GoodsSelectorWidget> {
  late GoodsSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoodsSelectorModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      onFieldSubmitted: (_) async {
                        if (_model.textController.text != '') {
                          _model.removeFromHistory(_model.textController.text);
                          safeSetState(() {});
                          _model.addToHistory(_model.textController.text);
                          safeSetState(() {});
                          _model.apiResulttu9 =
                              await StockAPIGroup.searchGoodsCall.call(
                            keyword: _model.textController.text,
                            warehouseId: widget.warehouseId,
                            token: FFAppState().TOKEN,
                            session: FFAppState().SESSION,
                          );

                          if (StockAPIGroup.searchGoodsCall.errno(
                                (_model.apiResulttu9?.jsonBody ?? ''),
                              ) ==
                              1) {
                            _model.goodsList = StockAPIGroup.searchGoodsCall
                                .goods(
                                  (_model.apiResulttu9?.jsonBody ?? ''),
                                )!
                                .toList()
                                .cast<GoodsDTStruct>();
                            safeSetState(() {});
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '服务器异常，请退出后重新登录',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '请输入商品名称',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 3000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).warning,
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                        hintText: '输入商品名称搜索',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).accent2,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.search_sharp,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    if (_model.textController.text != '') {
                      _model.removeFromHistory(_model.textController.text);
                      safeSetState(() {});
                      _model.addToHistory(_model.textController.text);
                      safeSetState(() {});
                      _model.apiResulttu9Copy =
                          await StockAPIGroup.searchGoodsCall.call(
                        keyword: _model.textController.text,
                        warehouseId: widget.warehouseId,
                        token: FFAppState().TOKEN,
                        session: FFAppState().SESSION,
                      );

                      if (StockAPIGroup.searchGoodsCall.errno(
                            (_model.apiResulttu9Copy?.jsonBody ?? ''),
                          ) ==
                          1) {
                        _model.goodsList = StockAPIGroup.searchGoodsCall
                            .goods(
                              (_model.apiResulttu9Copy?.jsonBody ?? ''),
                            )!
                            .toList()
                            .cast<GoodsDTStruct>();
                        safeSetState(() {});
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '查询异常',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: FlutterFlowTheme.of(context).error,
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '请输入商品名称',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 3000),
                          backgroundColor: FlutterFlowTheme.of(context).warning,
                        ),
                      );
                    }

                    safeSetState(() {});
                  },
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
            Builder(
              builder: (context) {
                final recentListData = _model.history.toList();

                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(recentListData.length,
                        (recentListDataIndex) {
                      final recentListDataItem =
                          recentListData[recentListDataIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          safeSetState(() {
                            _model.textController?.text = recentListDataItem;
                            _model.textFieldFocusNode?.requestFocus();
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              _model.textController?.selection =
                                  TextSelection.collapsed(
                                offset: _model.textController!.text.length,
                              );
                            });
                          });
                        },
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 100.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent2,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 8.0),
                            child: Text(
                              recentListDataItem,
                              textAlign: TextAlign.center,
                              maxLines: 8,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
            if (_model.goodsList.isNotEmpty)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    child: Builder(
                      builder: (context) {
                        final goods = _model.goodsList.toList();

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(goods.length, (goodsIndex) {
                              final goodsItem = goods[goodsIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await widget.onSelect?.call(
                                    goodsItem,
                                  );
                                  _model.addToRecentList(GoodsDTStruct());
                                  safeSetState(() {});
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  constraints: const BoxConstraints(
                                    minHeight: 66.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            goodsItem.thumb,
                                            width: 44.0,
                                            height: 44.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                goodsItem.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    '规格：${goodsItem.skuName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(const SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                              );
                            }).divide(const SizedBox(height: 8.0)),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
          ].divide(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
