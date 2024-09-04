import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_sport_profile_widget.dart' show CreateSportProfileWidget;
import 'package:flutter/material.dart';

class CreateSportProfileModel
    extends FlutterFlowModel<CreateSportProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtAge widget.
  FocusNode? txtAgeFocusNode;
  TextEditingController? txtAgeTextController;
  String? Function(BuildContext, String?)? txtAgeTextControllerValidator;
  String? _txtAgeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtHeight widget.
  FocusNode? txtHeightFocusNode;
  TextEditingController? txtHeightTextController;
  String? Function(BuildContext, String?)? txtHeightTextControllerValidator;
  String? _txtHeightTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtWeight widget.
  FocusNode? txtWeightFocusNode;
  TextEditingController? txtWeightTextController;
  String? Function(BuildContext, String?)? txtWeightTextControllerValidator;
  String? _txtWeightTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for CcGender widget.
  FormFieldController<List<String>>? ccGenderValueController;
  String? get ccGenderValue => ccGenderValueController?.value?.firstOrNull;
  set ccGenderValue(String? val) =>
      ccGenderValueController?.value = val != null ? [val] : [];
  // State field(s) for CcSkillLevel widget.
  FormFieldController<List<String>>? ccSkillLevelValueController;
  String? get ccSkillLevelValue =>
      ccSkillLevelValueController?.value?.firstOrNull;
  set ccSkillLevelValue(String? val) =>
      ccSkillLevelValueController?.value = val != null ? [val] : [];
  // State field(s) for ppAddress widget.
  FFPlace ppAddressValue = const FFPlace();

  @override
  void initState(BuildContext context) {
    txtAgeTextControllerValidator = _txtAgeTextControllerValidator;
    txtHeightTextControllerValidator = _txtHeightTextControllerValidator;
    txtWeightTextControllerValidator = _txtWeightTextControllerValidator;
  }

  @override
  void dispose() {
    txtAgeFocusNode?.dispose();
    txtAgeTextController?.dispose();

    txtHeightFocusNode?.dispose();
    txtHeightTextController?.dispose();

    txtWeightFocusNode?.dispose();
    txtWeightTextController?.dispose();
  }
}
