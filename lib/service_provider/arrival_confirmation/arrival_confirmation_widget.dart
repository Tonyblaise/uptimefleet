import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'arrival_confirmation_model.dart';
export 'arrival_confirmation_model.dart';

class ArrivalConfirmationWidget extends StatefulWidget {
  const ArrivalConfirmationWidget({super.key});

  @override
  State<ArrivalConfirmationWidget> createState() =>
      _ArrivalConfirmationWidgetState();
}

class _ArrivalConfirmationWidgetState extends State<ArrivalConfirmationWidget> {
  late ArrivalConfirmationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArrivalConfirmationModel());

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
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 80.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).secondary,
                        FlutterFlowTheme.of(context).tertiary
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Arrival confirmation',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Yantramanav',
                            color: Colors.black,
                            fontSize: 24.0,
                          ),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: SvgPicture.asset(
                  'assets/images/group_iconlocation_(1).svg',
                  width: 56.0,
                  height: 56.0,
                  fit: BoxFit.contain,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Please ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Yantramanav',
                                      color: const Color(0xFF64748B),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              const TextSpan(
                                text: '“Confirm” ',
                                style: TextStyle(
                                  color: Color(0xFF64748B),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                text: 'your arrival\nat your destination.',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Yantramanav',
                                  color: const Color(0xFF64748B),
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Otherwise, please wait until you do.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Yantramanav',
                                    color: const Color(0xFF64748B),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 56.0,
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.sizeOf(context).width * 0.9,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(18.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).tertiary,
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
                                    color: const Color(0xFF0CCA4A),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 30.0),
                          child: Container(
                            height: 56.0,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.sizeOf(context).width * 0.9,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).tertiary
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Confirm arrival',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Yantramanav',
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 15.0)),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 32.0)),
          ),
        ),
      ),
    );
  }
}
