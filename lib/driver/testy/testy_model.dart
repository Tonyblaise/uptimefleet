import '/flutter_flow/flutter_flow_util.dart';
import 'testy_widget.dart' show TestyWidget;
import 'package:flutter/material.dart';

class TestyModel extends FlutterFlowModel<TestyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
