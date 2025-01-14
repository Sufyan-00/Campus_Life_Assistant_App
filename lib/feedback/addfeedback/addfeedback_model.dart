import '/flutter_flow/flutter_flow_util.dart';
import 'addfeedback_widget.dart' show AddfeedbackWidget;
import 'package:flutter/material.dart';

class AddfeedbackModel extends FlutterFlowModel<AddfeedbackWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkConnectivity] action in addfeedback widget.
  bool? isOnline;
  // State field(s) for category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryTextController;
  String? Function(BuildContext, String?)? categoryTextControllerValidator;
  // State field(s) for Text widget.
  FocusNode? textFocusNode;
  TextEditingController? textTextController;
  String? Function(BuildContext, String?)? textTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    categoryFocusNode?.dispose();
    categoryTextController?.dispose();

    textFocusNode?.dispose();
    textTextController?.dispose();
  }
}
