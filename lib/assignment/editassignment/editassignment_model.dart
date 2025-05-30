import '/flutter_flow/flutter_flow_util.dart';
import 'editassignment_widget.dart' show EditassignmentWidget;
import 'package:flutter/material.dart';

class EditassignmentModel extends FlutterFlowModel<EditassignmentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for editclassname widget.
  FocusNode? editclassnameFocusNode;
  TextEditingController? editclassnameTextController;
  String? Function(BuildContext, String?)? editclassnameTextControllerValidator;
  // State field(s) for editlocation widget.
  FocusNode? editlocationFocusNode;
  TextEditingController? editlocationTextController;
  String? Function(BuildContext, String?)? editlocationTextControllerValidator;
  // State field(s) for editdate widget.
  FocusNode? editdateFocusNode;
  TextEditingController? editdateTextController;
  String? Function(BuildContext, String?)? editdateTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editclassnameFocusNode?.dispose();
    editclassnameTextController?.dispose();

    editlocationFocusNode?.dispose();
    editlocationTextController?.dispose();

    editdateFocusNode?.dispose();
    editdateTextController?.dispose();
  }
}
