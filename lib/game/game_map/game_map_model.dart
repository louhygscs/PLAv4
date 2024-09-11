import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'game_map_widget.dart' show GameMapWidget;
import 'package:flutter/material.dart';

class GameMapModel extends FlutterFlowModel<GameMapWidget> {
  ///  Local state fields for this page.

  String? timeLeft;

  String? distanceLeft;

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
