import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_profile_widget.dart' show Auth2ProfileWidget;
import 'package:flutter/material.dart';

class Auth2ProfileModel extends FlutterFlowModel<Auth2ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in contentView_EditQuestion widget.
  UserquestionRecord? checkUserSportProfile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
