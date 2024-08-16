import '/flutter_flow/flutter_flow_util.dart';
import 'create_court_yard_widget.dart' show CreateCourtYardWidget;
import 'package:flutter/material.dart';

class CreateCourtYardModel extends FlutterFlowModel<CreateCourtYardWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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

  @override
  void initState(BuildContext context) {
    txtSportVenueNameTextControllerValidator =
        _txtSportVenueNameTextControllerValidator;
  }

  @override
  void dispose() {
    txtSportVenueNameFocusNode?.dispose();
    txtSportVenueNameTextController?.dispose();
  }
}
