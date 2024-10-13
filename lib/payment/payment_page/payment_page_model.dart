import '/flutter_flow/flutter_flow_util.dart';
import '/payment/payment_details/payment_details_widget.dart';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:flutter/material.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PaymentDetails component.
  late PaymentDetailsModel paymentDetailsModel;

  @override
  void initState(BuildContext context) {
    paymentDetailsModel = createModel(context, () => PaymentDetailsModel());
  }

  @override
  void dispose() {
    paymentDetailsModel.dispose();
  }
}
