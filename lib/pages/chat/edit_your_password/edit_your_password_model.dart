import '/flutter_flow/flutter_flow_util.dart';
import 'edit_your_password_widget.dart' show EditYourPasswordWidget;
import 'package:flutter/material.dart';

class EditYourPasswordModel extends FlutterFlowModel<EditYourPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
