import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_vehicle_widget.dart' show SelectVehicleWidget;
import 'package:flutter/material.dart';

class SelectVehicleModel extends FlutterFlowModel<SelectVehicleWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Get technician vehicles)] action in Container widget.
  ApiCallResponse? vehicles;
  // Stores action output result for [Backend Call - API (Update technician)] action in Container widget.
  ApiCallResponse? apiResultpgx;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
