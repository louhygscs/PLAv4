import '/backend/backend.dart';
import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_court_yard_widget.dart' show SearchCourtYardWidget;
import 'package:flutter/material.dart';

class SearchCourtYardModel extends FlutterFlowModel<SearchCourtYardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtSearchSportVenue widget.
  FocusNode? txtSearchSportVenueFocusNode;
  TextEditingController? txtSearchSportVenueTextController;
  String? Function(BuildContext, String?)?
      txtSearchSportVenueTextControllerValidator;
  List<SportvenueRecord> simpleSearchResults = [];
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtSearchSportVenueFocusNode?.dispose();
    txtSearchSportVenueTextController?.dispose();

    navBar1Model.dispose();
  }
}
