import '/flutter_flow/flutter_flow_util.dart';
import 'addclass_widget.dart' show AddclassWidget;
import 'package:flutter/material.dart';

class AddclassModel extends FlutterFlowModel<AddclassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for setclassname widget.
  FocusNode? setclassnameFocusNode;
  TextEditingController? setclassnameTextController;
  String? Function(BuildContext, String?)? setclassnameTextControllerValidator;
  // State field(s) for setlocation widget.
  FocusNode? setlocationFocusNode;
  TextEditingController? setlocationTextController;
  String? Function(BuildContext, String?)? setlocationTextControllerValidator;
  // State field(s) for setDate widget.
  FocusNode? setDateFocusNode;
  TextEditingController? setDateTextController;
  String? Function(BuildContext, String?)? setDateTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    setclassnameFocusNode?.dispose();
    setclassnameTextController?.dispose();

    setlocationFocusNode?.dispose();
    setlocationTextController?.dispose();

    setDateFocusNode?.dispose();
    setDateTextController?.dispose();
  }
}
