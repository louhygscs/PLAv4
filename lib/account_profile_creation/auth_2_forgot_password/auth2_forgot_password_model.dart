import '/components/header_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_forgot_password_widget.dart' show Auth2ForgotPasswordWidget;
import 'package:flutter/material.dart';

class Auth2ForgotPasswordModel
    extends FlutterFlowModel<Auth2ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderLogo component.
  late HeaderLogoModel headerLogoModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerLogoModel = createModel(context, () => HeaderLogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerLogoModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
