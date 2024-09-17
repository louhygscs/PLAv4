import '/account_profile_creation/edit_profile_auth_2/edit_profile_auth2_widget.dart';
import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_edit_profile_widget.dart' show Auth2EditProfileWidget;
import 'package:flutter/material.dart';

class Auth2EditProfileModel extends FlutterFlowModel<Auth2EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProfile_auth_2 component.
  late EditProfileAuth2Model editProfileAuth2Model;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    editProfileAuth2Model = createModel(context, () => EditProfileAuth2Model());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    editProfileAuth2Model.dispose();
    navBar1Model.dispose();
  }
}
