import '/flutter_flow/flutter_flow_util.dart';
import 'edit_class_widget.dart' show EditClassWidget;
import 'package:flutter/material.dart';

class EditClassModel extends FlutterFlowModel<EditClassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for editclassname widget.
  FocusNode? editclassnameFocusNode;
  TextEditingController? editclassnameTextController;
  String? Function(BuildContext, String?)? editclassnameTextControllerValidator;
  // State field(s) for editlocation widget.
  FocusNode? editlocationFocusNode;
  TextEditingController? editlocationTextController;
  String? Function(BuildContext, String?)? editlocationTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editclassnameFocusNode?.dispose();
    editclassnameTextController?.dispose();

    editlocationFocusNode?.dispose();
    editlocationTextController?.dispose();
  }
}
