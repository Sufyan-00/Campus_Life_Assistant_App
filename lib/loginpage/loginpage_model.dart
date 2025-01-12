import '/flutter_flow/flutter_flow_util.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for signin-emailAddress widget.
  FocusNode? signinEmailAddressFocusNode;
  TextEditingController? signinEmailAddressTextController;
  String? Function(BuildContext, String?)?
      signinEmailAddressTextControllerValidator;
  // State field(s) for signin-password widget.
  FocusNode? signinPasswordFocusNode;
  TextEditingController? signinPasswordTextController;
  late bool signinPasswordVisibility;
  String? Function(BuildContext, String?)?
      signinPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signinPasswordVisibility = false;
  }

  @override
  void dispose() {
    signinEmailAddressFocusNode?.dispose();
    signinEmailAddressTextController?.dispose();

    signinPasswordFocusNode?.dispose();
    signinPasswordTextController?.dispose();
  }
}
