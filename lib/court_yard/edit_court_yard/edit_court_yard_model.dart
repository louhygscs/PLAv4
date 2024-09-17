import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_court_yard_widget.dart' show EditCourtYardWidget;
import 'package:flutter/material.dart';

class EditCourtYardModel extends FlutterFlowModel<EditCourtYardWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtSportVenueName widget.
  FocusNode? txtSportVenueNameFocusNode;
  TextEditingController? txtSportVenueNameTextController;
  String? Function(BuildContext, String?)?
      txtSportVenueNameTextControllerValidator;
  String? _txtSportVenueNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    txtSportVenueNameTextControllerValidator =
        _txtSportVenueNameTextControllerValidator;
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    txtSportVenueNameFocusNode?.dispose();
    txtSportVenueNameTextController?.dispose();

    navBar1Model.dispose();
  }
}
