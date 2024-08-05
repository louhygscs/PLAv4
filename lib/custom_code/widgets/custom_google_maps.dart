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

// Aliased import to resolve LatLng conflict
import 'package:google_maps_flutter_platform_interface/src/types/location.dart'
    as google_maps;

import 'package:google_maps_widget/google_maps_widget.dart';

class CustomGoogleMaps extends StatefulWidget {
  const CustomGoogleMaps(
      {super.key,
      this.width,
      this.height,
      required this.distanceCallback,
      required this.timeCallback});

  final double? width;
  final double? height;
  final Future Function(String? distance) distanceCallback;
  final Future Function(String? time) timeCallback;

  @override
  State<CustomGoogleMaps> createState() => _CustomGoogleMapsState();
}

class _CustomGoogleMapsState extends State<CustomGoogleMaps> {
  final mapsWidgetController = GlobalKey<GoogleMapsWidgetState>();

  @override
  Widget build(BuildContext context) {
    return GoogleMapsWidget(
      apiKey: "AIzaSyCRIO1GlspC9CLXY9WWVYs4PfmZwwOR7tk",
      key: mapsWidgetController,
      sourceLatLng: google_maps.LatLng(
        40.748817, // Latitude for Empire State Building
        -73.985428, // Longitude for Empire State Building
      ),
      destinationLatLng: google_maps.LatLng(
        40.787010, // Latitude for Upper West Side location
        -73.975367, // Longitude for Upper West Side location
      ),
      routeWidth: 2,
      sourceMarkerIconInfo: MarkerIconInfo(
        infoWindowTitle: "Empire State Building",
        onTapInfoWindow: (_) {
          print("Tapped on Empire State Building info window");
        },
        assetPath: "assets/images/house-marker.png",
      ),
      destinationMarkerIconInfo: MarkerIconInfo(
        assetPath: "assets/images/restaurant-marker.png",
      ),
      driverMarkerIconInfo: MarkerIconInfo(
        infoWindowTitle: "Alex",
        assetPath: "assets/images/driver-marker.png",
        onTapMarker: (currentLocation) {
          print("Driver is currently at $currentLocation");
        },
        assetMarkerSize: Size.square(125),
        rotation: 90,
      ),
      updatePolylinesOnDriverLocUpdate: true,
      onPolylineUpdate: (_) {
        print("Polyline updated");
      },
      driverCoordinatesStream: Stream.periodic(
        Duration(milliseconds: 500),
        (i) {
          // Simulate driver moving along a route
          double latitudeDiff = 40.787010 - 40.748817;
          double longitudeDiff = -73.975367 + 73.985428;
          double increment =
              i / 1000.0; // Incremental increase for the simulation
          return google_maps.LatLng(
              40.748817 + latitudeDiff * increment, // Simulate moving latitude
              -73.985428 -
                  longitudeDiff * increment // Simulate moving longitude
              );
        },
      ),
      totalTimeCallback: (time) => widget.timeCallback(time),
      totalDistanceCallback: (distance) => widget.distanceCallback(distance),
    );
  }
}
