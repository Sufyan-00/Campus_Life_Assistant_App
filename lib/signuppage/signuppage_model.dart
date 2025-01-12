import '/flutter_flow/flutter_flow_util.dart';
import 'signuppage_widget.dart' show SignuppageWidget;
import 'package:flutter/material.dart';

class SignuppageModel extends FlutterFlowModel<SignuppageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for signup-emailAddress widget.
  FocusNode? signupEmailAddressFocusNode;
  TextEditingController? signupEmailAddressTextController;
  String? Function(BuildContext, String?)?
      signupEmailAddressTextControllerValidator;
  // State field(s) for signup-password widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  // State field(s) for con-signup-password widget.
  FocusNode? conSignupPasswordFocusNode;
  TextEditingController? conSignupPasswordTextController;
  late bool conSignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      conSignupPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupPasswordVisibility = false;
    conSignupPasswordVisibility = false;
  }

  @override
  void dispose() {
    signupEmailAddressFocusNode?.dispose();
    signupEmailAddressTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    conSignupPasswordFocusNode?.dispose();
    conSignupPasswordTextController?.dispose();
  }
}
