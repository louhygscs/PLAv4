import '/flutter_flow/flutter_flow_util.dart';
import 'payment_details_widget.dart' show PaymentDetailsWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PaymentDetailsModel extends FlutterFlowModel<PaymentDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCardAlias widget.
  FocusNode? txtCardAliasFocusNode;
  TextEditingController? txtCardAliasTextController;
  String? Function(BuildContext, String?)? txtCardAliasTextControllerValidator;
  // State field(s) for txtCardNumber widget.
  FocusNode? txtCardNumberFocusNode;
  TextEditingController? txtCardNumberTextController;
  final txtCardNumberMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? txtCardNumberTextControllerValidator;
  // State field(s) for txtExpire widget.
  FocusNode? txtExpireFocusNode;
  TextEditingController? txtExpireTextController;
  final txtExpireMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)? txtExpireTextControllerValidator;
  // State field(s) for txtCVV widget.
  FocusNode? txtCVVFocusNode;
  TextEditingController? txtCVVTextController;
  final txtCVVMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? txtCVVTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCardAliasFocusNode?.dispose();
    txtCardAliasTextController?.dispose();

    txtCardNumberFocusNode?.dispose();
    txtCardNumberTextController?.dispose();

    txtExpireFocusNode?.dispose();
    txtExpireTextController?.dispose();

    txtCVVFocusNode?.dispose();
    txtCVVTextController?.dispose();
  }
}
