import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  DocumentReference? _docrefUpdate;
  DocumentReference? get docrefUpdate => _docrefUpdate;
  set docrefUpdate(DocumentReference? value) {
    _docrefUpdate = value;
  }

  LatLng? _location = const LatLng(40.7516, -73.9755);
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
  }

  List<LatLng> _initialMarkers = [
    const LatLng(40.6892, -74.0445),
    const LatLng(40.748817, -73.985428),
    const LatLng(40.785091, -73.968285),
    const LatLng(40.758, -73.9855),
    const LatLng(40.7061, -73.9969),
    const LatLng(0, 0)
  ];
  List<LatLng> get initialMarkers => _initialMarkers;
  set initialMarkers(List<LatLng> value) {
    _initialMarkers = value;
  }

  void addToInitialMarkers(LatLng value) {
    initialMarkers.add(value);
  }

  void removeFromInitialMarkers(LatLng value) {
    initialMarkers.remove(value);
  }

  void removeAtIndexFromInitialMarkers(int index) {
    initialMarkers.removeAt(index);
  }

  void updateInitialMarkersAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    initialMarkers[index] = updateFn(_initialMarkers[index]);
  }

  void insertAtIndexInInitialMarkers(int index, LatLng value) {
    initialMarkers.insert(index, value);
  }

  List<String> _addresses = [];
  List<String> get addresses => _addresses;
  set addresses(List<String> value) {
    _addresses = value;
  }

  void addToAddresses(String value) {
    addresses.add(value);
  }

  void removeFromAddresses(String value) {
    addresses.remove(value);
  }

  void removeAtIndexFromAddresses(int index) {
    addresses.removeAt(index);
  }

  void updateAddressesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    addresses[index] = updateFn(_addresses[index]);
  }

  void insertAtIndexInAddresses(int index, String value) {
    addresses.insert(index, value);
  }

  List<String> _placeids = [];
  List<String> get placeids => _placeids;
  set placeids(List<String> value) {
    _placeids = value;
  }

  void addToPlaceids(String value) {
    placeids.add(value);
  }

  void removeFromPlaceids(String value) {
    placeids.remove(value);
  }

  void removeAtIndexFromPlaceids(int index) {
    placeids.removeAt(index);
  }

  void updatePlaceidsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    placeids[index] = updateFn(_placeids[index]);
  }

  void insertAtIndexInPlaceids(int index, String value) {
    placeids.insert(index, value);
  }

  List<LatLng> _markers = [];
  List<LatLng> get markers => _markers;
  set markers(List<LatLng> value) {
    _markers = value;
  }

  void addToMarkers(LatLng value) {
    markers.add(value);
  }

  void removeFromMarkers(LatLng value) {
    markers.remove(value);
  }

  void removeAtIndexFromMarkers(int index) {
    markers.removeAt(index);
  }

  void updateMarkersAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    markers[index] = updateFn(_markers[index]);
  }

  void insertAtIndexInMarkers(int index, LatLng value) {
    markers.insert(index, value);
  }

  String _address1 = '';
  String get address1 => _address1;
  set address1(String value) {
    _address1 = value;
  }

  String _address2 = '';
  String get address2 => _address2;
  set address2(String value) {
    _address2 = value;
  }

  String _address3 = '';
  String get address3 => _address3;
  set address3(String value) {
    _address3 = value;
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}
