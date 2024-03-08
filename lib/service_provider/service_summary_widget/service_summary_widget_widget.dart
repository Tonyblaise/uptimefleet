import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'service_summary_widget_model.dart';
export 'service_summary_widget_model.dart';

class ServiceSummaryWidgetWidget extends StatefulWidget {
  const ServiceSummaryWidgetWidget({
    super.key,
    this.fleetCompanyName,
    this.driverName,
    this.driverPhoneNumber,
    this.serviceId,
    this.timestamp,
    this.eventType,
    this.pickUp,
    this.dropOff,
    this.vehicleLicenseNumber,
    this.vehicleInformation,
    this.vehicleVinNumber,
    required this.locationLat,
    required this.locationLng,
  });

  final String? fleetCompanyName;
  final String? driverName;
  final String? driverPhoneNumber;
  final String? serviceId;
  final String? timestamp;
  final String? eventType;
  final String? pickUp;
  final String? dropOff;
  final String? vehicleLicenseNumber;
  final String? vehicleInformation;
  final String? vehicleVinNumber;
  final double? locationLat;
  final double? locationLng;

  @override
  State<ServiceSummaryWidgetWidget> createState() =>
      _ServiceSummaryWidgetWidgetState();
}

class _ServiceSummaryWidgetWidgetState
    extends State<ServiceSummaryWidgetWidget> {
  late ServiceSummaryWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceSummaryWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: const Color(0xFFCBD5E1),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fleet Company Name',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.fleetCompanyName,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Driver Name',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.driverName,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Driver Phone Number',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.driverPhoneNumber,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: const Color(0xFFCBD5E1),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Service ID',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.serviceId,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Timestamp',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.timestamp,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Event Type',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.eventType,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pick Up/Service Location',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.pickUp,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Drop Off Location',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.dropOff,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: const Color(0xFFCBD5E1),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vehicle License Number',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.vehicleLicenseNumber,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vehicle Information',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.vehicleInformation,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vin Number',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.vehicleVinNumber,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Yantramanav',
                                          color: const Color(0xFF64748B),
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'navigation',
                    queryParameters: {
                      'locationLat': serializeParam(
                        widget.locationLat,
                        ParamType.double,
                      ),
                      'loocationLng': serializeParam(
                        0.0,
                        ParamType.double,
                      ),
                      'destLat': serializeParam(
                        widget.locationLat,
                        ParamType.double,
                      ),
                      'destLng': serializeParam(
                        widget.locationLng,
                        ParamType.double,
                      ),
                    }.withoutNulls,
                  );
                },
                text: 'Start Ride',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Yantramanav',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
