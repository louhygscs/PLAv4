// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';
import 'package:google_maps_widget/google_maps_widget.dart' as GM;

class GMapWidget2 extends StatefulWidget {
  const GMapWidget2({
    Key? key,
    this.width,
    this.height,
    required this.ordersDocRef,
    required this.ordersDoc,
  });

  final double? width;
  final double? height;
  final DocumentReference ordersDocRef;
  final OrdersRecord ordersDoc;

  @override
  State<GMapWidget2> createState() => _GMapWidget2State();
}

class _GMapWidget2State extends State<GMapWidget2> {
  final _mapsWidgetController = GlobalKey<GM.GoogleMapsWidgetState>();

  // same as origin
  List<GM.LatLng> _driverPositions = [];

  @override
  void initState() {
    super.initState();

    // add initial source point
    _driverPositions.add(GM.LatLng(
        widget.ordersDoc.source!.latitude, widget.ordersDoc.source!.longitude));

    // add all the points
    _driverPositions
        .addAll(widget.ordersDoc.driverPositions as Iterable<GM.LatLng>);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: GM.GoogleMapsWidget(
                  zoomControlsEnabled: true,
                  apiKey: "AIzaSyDD2ApCiPGgrcx3LjAJ4AJOxOvXXXPw0_4",
                  key: _mapsWidgetController,
                  sourceLatLng: GM.LatLng(
                    widget.ordersDoc.source!.latitude,
                    widget.ordersDoc.source!.longitude,
                  ),
                  destinationLatLng: GM.LatLng(
                    widget.ordersDoc.destination!.latitude,
                    widget.ordersDoc.destination!.longitude,
                  ),

                  ///////////////////////////////////////////////////////
                  //////////////    OPTIONAL PARAMETERS    //////////////
                  ///////////////////////////////////////////////////////

                  routeWidth: 5,
                  sourceMarkerIconInfo: GM.MarkerIconInfo(
                    infoWindowTitle: "This is source name",
                    onTapInfoWindow: (_) {
                      print("Tapped on source info window");
                    },
                    assetPath: "assets/images/restaurant-marker-icon.png",
                  ),
                  destinationMarkerIconInfo: GM.MarkerIconInfo(
                    assetPath: "assets/images/house-marker-icon.png",
                  ),
                  driverMarkerIconInfo: GM.MarkerIconInfo(
                    infoWindowTitle: "Alex",
                    assetPath: "assets/images/driver-marker-icon.png",
                    onTapMarker: (currentLocation) {
                      print("Driver is currently at $currentLocation");
                    },
                    assetMarkerSize: Size.square(125),
                    // rotation: 90,
                  ),
                  updatePolylinesOnDriverLocUpdate: true,
                  // an array of LatLng that represent a path from source to destination
                  onPolylineUpdate: (p) {
                    print("Polyline updated ${p.points}");
                    // if (driverPoints.length == 1) {
                    //   driverPoints = p.points;
                    //   driverPoints.add(GM.LatLng(0, 0));
                    // }
                  },
                  driverCoordinatesStream: Stream.periodic(
                    const Duration(milliseconds: 5000),
                    (i) => GM.LatLng(_driverPositions[i].latitude,
                        _driverPositions[i].longitude),
                  ).takeWhile((element) =>
                      element.longitude != 0 && element.latitude != 0),

                  // mock stream
                  // driverCoordinatesStream: Stream.periodic(
                  //   Duration(milliseconds: 5000),
                  //   (i) => GM.LatLng(40.484000837597925 - i / 10000,
                  //       -3.369978368282318 + i / 10000),
                  // ),
                  // driverCoordinatesStream: Stream.periodic(
                  //         Duration(milliseconds: 500), (i) => driverPoints[i])
                  //     .takeWhile((element) =>
                  //         element.longitude != 0 && element.latitude != 0),
                  totalTimeCallback: (time) => print("Time: $time"),
                  totalDistanceCallback: (distance) =>
                      print("Distance: $distance"),
                ),
              ),
              // demonstrates how to interact with the controller
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          _mapsWidgetController.currentState!.setSourceLatLng(
                            GM.LatLng(
                              40.484000837597925 * (Random().nextDouble()),
                              -3.369978368282318,
                            ),
                          );
                        },
                        child: Text('Update source'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          final googleMapsCon = await _mapsWidgetController
                              .currentState!
                              .getGoogleMapsController();
                          googleMapsCon.showMarkerInfoWindow(
                            GM.MarkerIconInfo.sourceMarkerId,
                          );
                        },
                        child: Text('Show source info'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
