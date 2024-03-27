import '/driver/cancel_request/cancel_request_widget.dart';
import '/driver/your_tech_enroute/your_tech_enroute_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'service_updates_component_model.dart';
export 'service_updates_component_model.dart';

class ServiceUpdatesComponentWidget extends StatefulWidget {
  const ServiceUpdatesComponentWidget({
    super.key,
    required this.requestStatus,
  });

  final String? requestStatus;

  @override
  State<ServiceUpdatesComponentWidget> createState() =>
      _ServiceUpdatesComponentWidgetState();
}

class _ServiceUpdatesComponentWidgetState
    extends State<ServiceUpdatesComponentWidget> {
  late ServiceUpdatesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceUpdatesComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Booking status:',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Yantramanav',
                            color: Colors.black,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      widget.requestStatus == 'newCase'
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : Colors.white,
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    borderRadius: BorderRadius.circular(18.0),
                                    border: Border.all(
                                      color: valueOrDefault<Color>(
                                        widget.requestStatus == 'newCase'
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : const Color(0xFFE5E7EE),
                                        const Color(0xFFE5E7EE),
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.36,
                                        height: 36.0,
                                        constraints: const BoxConstraints(
                                          maxWidth: 36.0,
                                          maxHeight: 36.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          border: Border.all(
                                            color: valueOrDefault<Color>(
                                              widget.requestStatus == 'newCase'
                                                  ? Colors.transparent
                                                  : const Color(0xFFE5E7EE),
                                              const Color(0xFFE5E7EE),
                                            ),
                                          ),
                                        ),
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          '1',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Yantramanav',
                                                color: valueOrDefault<Color>(
                                                  widget.requestStatus ==
                                                          'inProgress'
                                                      ? Colors.black
                                                      : const Color(0xFFE5E7EE),
                                                  const Color(0xFFE5E7EE),
                                                ),
                                                fontSize: 24.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 64.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          widget.requestStatus == 'newCase'
                                              ? FlutterFlowTheme.of(context)
                                                  .tertiary
                                              : const Color(0xFFE5E7EE),
                                          const Color(0xFFE5E7EE),
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Request In Process',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Yantramanav',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            widget.requestStatus ==
                                                                    'newCase'
                                                                ? Colors.black
                                                                : const Color(
                                                                    0xFFE5E7EE),
                                                            const Color(0xFFE5E7EE),
                                                          ),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Standby For ETA',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Yantramanav',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            widget.requestStatus ==
                                                                    'newCase'
                                                                ? const Color(
                                                                    0xFF64748B)
                                                                : const Color(
                                                                    0xFFE5E7EE),
                                                            const Color(0xFFE5E7EE),
                                                          ),
                                                          fontSize: 16.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const YourTechEnrouteWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 64.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        widget.requestStatus == 'inProgress'
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : Colors.white,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          widget.requestStatus == 'inProgress'
                                              ? Colors.transparent
                                              : const Color(0xFFE5E7EE),
                                          const Color(0xFFE5E7EE),
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.36,
                                          height: 36.0,
                                          constraints: const BoxConstraints(
                                            maxWidth: 36.0,
                                            maxHeight: 36.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            border: Border.all(
                                              color: valueOrDefault<Color>(
                                                widget.requestStatus ==
                                                        'inProgress'
                                                    ? Colors.transparent
                                                    : const Color(0xFFE5E7EE),
                                                const Color(0xFFE5E7EE),
                                              ),
                                            ),
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: AutoSizeText(
                                              '2',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Yantramanav',
                                                    color:
                                                        valueOrDefault<Color>(
                                                      widget.requestStatus ==
                                                              'inProgress'
                                                          ? Colors.black
                                                          : const Color(0xFFE5E7EE),
                                                      const Color(0xFFE5E7EE),
                                                    ),
                                                    fontSize: 24.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 64.0,
                                      height: 64.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            widget.requestStatus == 'inProgress'
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiary
                                                : const Color(0xFFE5E7EE),
                                            const Color(0xFFE5E7EE),
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 20.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'En Route',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Yantramanav',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget.requestStatus ==
                                                                      'inProgress'
                                                                  ? Colors.black
                                                                  : const Color(
                                                                      0xFFE5E7EE),
                                                              const Color(0xFFE5E7EE),
                                                            ),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Check your tech location',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Yantramanav',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget.requestStatus ==
                                                                      'inProgress'
                                                                  ? const Color(
                                                                      0xFF64748B)
                                                                  : const Color(
                                                                      0xFFE5E7EE),
                                                              const Color(0xFFE5E7EE),
                                                            ),
                                                            fontSize: 16.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (widget.requestStatus ==
                                                'inProgress')
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/group_locationicon_(1).svg',
                                                  width: 18.0,
                                                  height: 31.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 5.0)),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18.0),
                                    border: Border.all(
                                      color: valueOrDefault<Color>(
                                        widget.requestStatus ==
                                                'arrivedAtLocation'
                                            ? Colors.transparent
                                            : const Color(0xFFE5E7EE),
                                        const Color(0xFFE5E7EE),
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.36,
                                        height: 36.0,
                                        constraints: const BoxConstraints(
                                          maxWidth: 36.0,
                                          maxHeight: 36.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          border: Border.all(
                                            color: valueOrDefault<Color>(
                                              widget.requestStatus ==
                                                      'arrivedAtLocation'
                                                  ? Colors.transparent
                                                  : const Color(0xFFE5E7EE),
                                              const Color(0xFFE5E7EE),
                                            ),
                                          ),
                                        ),
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          '3',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Yantramanav',
                                                color: valueOrDefault<Color>(
                                                  widget.requestStatus ==
                                                          'arrivedAtLocation'
                                                      ? Colors.black
                                                      : const Color(0xFFE5E7EE),
                                                  const Color(0xFFE5E7EE),
                                                ),
                                                fontSize: 24.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 64.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18.0),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          widget
                                                      .requestStatus ==
                                                  'arrivedAtLocation'
                                              ? FlutterFlowTheme.of(context)
                                                  .tertiary
                                              : const Color(0xFFE5E7EE),
                                          const Color(0xFFE5E7EE),
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'In Service',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Yantramanav',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            widget.requestStatus ==
                                                                    'arrivedAtLocation'
                                                                ? Colors.black
                                                                : const Color(
                                                                    0xFFE5E7EE),
                                                            const Color(0xFFE5E7EE),
                                                          ),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Short description of the state',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Yantramanav',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            widget.requestStatus ==
                                                                    'arrivedAtLocation'
                                                                ? const Color(
                                                                    0xFF64748B)
                                                                : const Color(
                                                                    0xFFE5E7EE),
                                                            const Color(0xFFE5E7EE),
                                                          ),
                                                          fontSize: 16.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const CancelRequestWidget(
                                        id: '',
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Container(
                                width: 180.0,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.0),
                                  border: Border.all(
                                    color: const Color(0xFFF50833),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Cancel',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFFF50833),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 40.0)),
                      ),
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
