import '/backend/backend.dart';
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtSearchSportVenueFocusNode?.dispose();
    txtSearchSportVenueTextController?.dispose();
  }
}
