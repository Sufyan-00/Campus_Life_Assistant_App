import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool isedit = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for editname widget.
  FocusNode? editnameFocusNode;
  TextEditingController? editnameTextController;
  String? Function(BuildContext, String?)? editnameTextControllerValidator;
  // State field(s) for editemail widget.
  FocusNode? editemailFocusNode;
  TextEditingController? editemailTextController;
  String? Function(BuildContext, String?)? editemailTextControllerValidator;
  // State field(s) for editpassword widget.
  FocusNode? editpasswordFocusNode;
  TextEditingController? editpasswordTextController;
  late bool editpasswordVisibility;
  String? Function(BuildContext, String?)? editpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    editpasswordVisibility = false;
  }

  @override
  void dispose() {
    editnameFocusNode?.dispose();
    editnameTextController?.dispose();

    editemailFocusNode?.dispose();
    editemailTextController?.dispose();

    editpasswordFocusNode?.dispose();
    editpasswordTextController?.dispose();
  }
}
