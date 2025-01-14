import '/flutter_flow/flutter_flow_util.dart';
import 'profileedit_widget.dart' show ProfileeditWidget;
import 'package:flutter/material.dart';

class ProfileeditModel extends FlutterFlowModel<ProfileeditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
  String? Function(BuildContext, String?)? editpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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
