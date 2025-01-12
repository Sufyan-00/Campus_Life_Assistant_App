import '/flutter_flow/flutter_flow_util.dart';
import 'classschedule_widget.dart' show ClassscheduleWidget;
import 'package:flutter/material.dart';

class ClassscheduleModel extends FlutterFlowModel<ClassscheduleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for setclassname widget.
  FocusNode? setclassnameFocusNode;
  TextEditingController? setclassnameTextController;
  String? Function(BuildContext, String?)? setclassnameTextControllerValidator;
  // State field(s) for setlocation widget.
  FocusNode? setlocationFocusNode;
  TextEditingController? setlocationTextController;
  String? Function(BuildContext, String?)? setlocationTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    setclassnameFocusNode?.dispose();
    setclassnameTextController?.dispose();

    setlocationFocusNode?.dispose();
    setlocationTextController?.dispose();
  }
}
