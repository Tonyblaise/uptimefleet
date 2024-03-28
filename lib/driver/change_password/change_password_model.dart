import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for yourOldPassword widget.
  FocusNode? yourOldPasswordFocusNode;
  TextEditingController? yourOldPasswordController;
  late bool yourOldPasswordVisibility;
  String? Function(BuildContext, String?)? yourOldPasswordControllerValidator;
  // State field(s) for yourNewPassword widget.
  FocusNode? yourNewPasswordFocusNode;
  TextEditingController? yourNewPasswordController;
  late bool yourNewPasswordVisibility;
  String? Function(BuildContext, String?)? yourNewPasswordControllerValidator;
  // State field(s) for confirmNewPassword widget.
  FocusNode? confirmNewPasswordFocusNode;
  TextEditingController? confirmNewPasswordController;
  late bool confirmNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (Change password)] action in Container widget.
  ApiCallResponse? apiResultjti;

  @override
  void initState(BuildContext context) {
    yourOldPasswordVisibility = false;
    yourNewPasswordVisibility = false;
    confirmNewPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    yourOldPasswordFocusNode?.dispose();
    yourOldPasswordController?.dispose();

    yourNewPasswordFocusNode?.dispose();
    yourNewPasswordController?.dispose();

    confirmNewPasswordFocusNode?.dispose();
    confirmNewPasswordController?.dispose();
  }
}
