import '/flutter_flow/flutter_flow_util.dart';
import 'navigation_widget.dart' show NavigationWidget;
import 'package:flutter/material.dart';

class NavigationModel extends FlutterFlowModel<NavigationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
