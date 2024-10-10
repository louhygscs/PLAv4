import '/flutter_flow/flutter_flow_util.dart';
import 'invite_friends_widget.dart' show InviteFriendsWidget;
import 'package:flutter/material.dart';

class InviteFriendsModel extends FlutterFlowModel<InviteFriendsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
