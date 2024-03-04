import '/driver/chat_thread_component/chat_thread_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'technician_chat_widget.dart' show TechnicianChatWidget;
import 'package:flutter/material.dart';

class TechnicianChatModel extends FlutterFlowModel<TechnicianChatWidget> {
  ///  Local state fields for this page.

  int? pageState;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chat_ThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatThreadComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
