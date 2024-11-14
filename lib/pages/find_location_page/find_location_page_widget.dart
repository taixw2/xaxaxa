import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'find_location_page_model.dart';
export 'find_location_page_model.dart';

class FindLocationPageWidget extends StatefulWidget {
  const FindLocationPageWidget({
    super.key,
    required this.warehouseId,
    this.positionParam,
  });

  final String? warehouseId;
  final String? positionParam;

  @override
  State<FindLocationPageWidget> createState() => _FindLocationPageWidgetState();
}

class _FindLocationPageWidgetState extends State<FindLocationPageWidget> {
  late FindLocationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FindLocationPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultaac = await StockAPIGroup.getLocationListCall.call(
        warehouseId: widget.warehouseId,
        token: FFAppState().TOKEN,
        session: FFAppState().SESSION,
      );

      if (StockAPIGroup.getLocationListCall.errno(
            (_model.apiResultaac?.jsonBody ?? ''),
          ) ==
          1) {
        _model.positionList = StockAPIGroup.getLocationListCall
            .position(
              (_model.apiResultaac?.jsonBody ?? ''),
            )!
            .toList()
            .cast<String>();
        _model.positionIdList = StockAPIGroup.getLocationListCall
            .positionId(
              (_model.apiResultaac?.jsonBody ?? ''),
            )!
            .toList()
            .cast<String>();
        safeSetState(() {});
        if (widget.positionParam != null && widget.positionParam != '') {
          _model.position = widget.positionParam;
          safeSetState(() {});
          await _model.loadLocationDetail(
            context,
            position: _model.position,
          );
          safeSetState(() {});
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '加载位置异常',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
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
            '库位调整',
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
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 36.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 44.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '货架位置',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            _model.position,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100.0,
                                height: 44.0,
                                child: custom_widgets.BarcodeScannerWidget(
                                  width: 100.0,
                                  height: 44.0,
                                  onSuccess: (res) async {
                                    _model.position = res;
                                    safeSetState(() {});
                                    await _model.loadLocationDetail(
                                      context,
                                      position: res,
                                    );
                                    safeSetState(() {});
                                  },
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                          Builder(
                            builder: (context) {
                              final locationDetailList =
                                  _model.locationDetails.toList();

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate(locationDetailList.length,
                                        (locationDetailListIndex) {
                                  final locationDetailListItem =
                                      locationDetailList[
                                          locationDetailListIndex];
                                  return Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  locationDetailListItem.name,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '编号：${locationDetailListItem.code}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Text(
                                                      '库存${locationDetailListItem.stockNumber}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                          if (locationDetailListItem
                                                  .stockNumber !=
                                              '0')
                                            FlutterFlowIconButton(
                                              borderRadius: 8.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              icon: Icon(
                                                Icons.remove_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 12.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                _model.returnPositionID =
                                                    await actions
                                                        .findPositionIdAction(
                                                  _model.positionList.toList(),
                                                  _model.positionIdList
                                                      .toList(),
                                                  _model.position,
                                                );
                                                await action_blocks
                                                    .goodsRelation(
                                                  context,
                                                  goodsId:
                                                      locationDetailListItem.id,
                                                  number: int.parse(
                                                          valueOrDefault<
                                                              String>(
                                                        locationDetailListItem
                                                            .stockNumber,
                                                        '1',
                                                      )) -
                                                      1,
                                                  positionId:
                                                      _model.returnPositionID,
                                                );
                                                await _model.loadLocationDetail(
                                                  context,
                                                  position: _model.position,
                                                );
                                                safeSetState(() {});

                                                safeSetState(() {});
                                              },
                                            ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            buttonSize: 30.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 12.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              _model.returnPlusPositionID =
                                                  await actions
                                                      .findPositionIdAction(
                                                _model.positionList.toList(),
                                                _model.positionIdList.toList(),
                                                _model.position,
                                              );
                                              await action_blocks.goodsRelation(
                                                context,
                                                goodsId:
                                                    locationDetailListItem.id,
                                                number: int.parse(
                                                        valueOrDefault<String>(
                                                      locationDetailListItem
                                                          .stockNumber,
                                                      '1',
                                                    )) +
                                                    1,
                                                positionId:
                                                    _model.returnPlusPositionID,
                                              );
                                              await _model.loadLocationDetail(
                                                context,
                                                position: _model.position,
                                              );
                                              safeSetState(() {});

                                              safeSetState(() {});
                                            },
                                          ),
                                          if (locationDetailListItem
                                                  .stockNumber ==
                                              '0')
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              icon: Icon(
                                                Icons.delete_forever,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 14.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                _model.positionIdByDelete =
                                                    await actions
                                                        .findPositionIdAction(
                                                  _model.positionList.toList(),
                                                  _model.positionIdList
                                                      .toList(),
                                                  _model.position,
                                                );
                                                _model.apiResultgsiCopy =
                                                    await StockAPIGroup
                                                        .relateGoodsCall
                                                        .call(
                                                  goods: '[]',
                                                  position:
                                                      _model.positionIdByDelete,
                                                  token: FFAppState().TOKEN,
                                                  session: FFAppState().SESSION,
                                                );

                                                await _model.loadLocationDetail(
                                                  context,
                                                  position: _model.position,
                                                );
                                                safeSetState(() {});

                                                safeSetState(() {});
                                              },
                                            ),
                                        ].divide(const SizedBox(width: 12.0)),
                                      ),
                                    ),
                                  );
                                }).divide(const SizedBox(height: 16.0)),
                              );
                            },
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
