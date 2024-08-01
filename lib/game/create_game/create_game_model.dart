import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_game_widget.dart' show CreateGameWidget;
import 'package:flutter/material.dart';

class CreateGameModel extends FlutterFlowModel<CreateGameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtGameTitle widget.
  FocusNode? txtGameTitleFocusNode;
  TextEditingController? txtGameTitleTextController;
  String? Function(BuildContext, String?)? txtGameTitleTextControllerValidator;
  String? _txtGameTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtGameDescription widget.
  FocusNode? txtGameDescriptionFocusNode;
  TextEditingController? txtGameDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtGameDescriptionTextControllerValidator;
  String? _txtGameDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for drpSportCategory widget.
  String? drpSportCategoryValue;
  FormFieldController<String>? drpSportCategoryValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNumberPlayers widget.
  FocusNode? txtNumberPlayersFocusNode;
  TextEditingController? txtNumberPlayersTextController;
  String? Function(BuildContext, String?)?
      txtNumberPlayersTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - getDocRefFromID] action in Button widget.
  DocumentReference? selectedDocRef;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    txtGameTitleTextControllerValidator = _txtGameTitleTextControllerValidator;
    txtGameDescriptionTextControllerValidator =
        _txtGameDescriptionTextControllerValidator;
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtGameTitleFocusNode?.dispose();
    txtGameTitleTextController?.dispose();

    txtGameDescriptionFocusNode?.dispose();
    txtGameDescriptionTextController?.dispose();

    txtNumberPlayersFocusNode?.dispose();
    txtNumberPlayersTextController?.dispose();

    navBar1Model.dispose();
  }
}