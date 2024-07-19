import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SportvenueRecord extends FirestoreRecord {
  SportvenueRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "available_time" field.
  DateTime? _availableTime;
  DateTime? get availableTime => _availableTime;
  bool hasAvailableTime() => _availableTime != null;

  // "venue_name" field.
  String? _venueName;
  String get venueName => _venueName ?? '';
  bool hasVenueName() => _venueName != null;

  // "venue_photo" field.
  String? _venuePhoto;
  String get venuePhoto => _venuePhoto ?? '';
  bool hasVenuePhoto() => _venuePhoto != null;

  // "venue_addressname" field.
  String? _venueAddressname;
  String get venueAddressname => _venueAddressname ?? '';
  bool hasVenueAddressname() => _venueAddressname != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  bool hasZipcode() => _zipcode != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "closing_time" field.
  DateTime? _closingTime;
  DateTime? get closingTime => _closingTime;
  bool hasClosingTime() => _closingTime != null;

  // "addresslatlng" field.
  LatLng? _addresslatlng;
  LatLng? get addresslatlng => _addresslatlng;
  bool hasAddresslatlng() => _addresslatlng != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _availableTime = snapshotData['available_time'] as DateTime?;
    _venueName = snapshotData['venue_name'] as String?;
    _venuePhoto = snapshotData['venue_photo'] as String?;
    _venueAddressname = snapshotData['venue_addressname'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _address = snapshotData['address'] as String?;
    _uid = snapshotData['uid'] as String?;
    _closingTime = snapshotData['closing_time'] as DateTime?;
    _addresslatlng = snapshotData['addresslatlng'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sportvenue');

  static Stream<SportvenueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SportvenueRecord.fromSnapshot(s));

  static Future<SportvenueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SportvenueRecord.fromSnapshot(s));

  static SportvenueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SportvenueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SportvenueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SportvenueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SportvenueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SportvenueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSportvenueRecordData({
  DateTime? createdTime,
  DateTime? editedTime,
  DateTime? availableTime,
  String? venueName,
  String? venuePhoto,
  String? venueAddressname,
  String? city,
  String? state,
  String? country,
  String? zipcode,
  String? address,
  String? uid,
  DateTime? closingTime,
  LatLng? addresslatlng,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'edited_time': editedTime,
      'available_time': availableTime,
      'venue_name': venueName,
      'venue_photo': venuePhoto,
      'venue_addressname': venueAddressname,
      'city': city,
      'state': state,
      'country': country,
      'zipcode': zipcode,
      'address': address,
      'uid': uid,
      'closing_time': closingTime,
      'addresslatlng': addresslatlng,
    }.withoutNulls,
  );

  return firestoreData;
}

class SportvenueRecordDocumentEquality implements Equality<SportvenueRecord> {
  const SportvenueRecordDocumentEquality();

  @override
  bool equals(SportvenueRecord? e1, SportvenueRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.availableTime == e2?.availableTime &&
        e1?.venueName == e2?.venueName &&
        e1?.venuePhoto == e2?.venuePhoto &&
        e1?.venueAddressname == e2?.venueAddressname &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipcode == e2?.zipcode &&
        e1?.address == e2?.address &&
        e1?.uid == e2?.uid &&
        e1?.closingTime == e2?.closingTime &&
        e1?.addresslatlng == e2?.addresslatlng;
  }

  @override
  int hash(SportvenueRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.editedTime,
        e?.availableTime,
        e?.venueName,
        e?.venuePhoto,
        e?.venueAddressname,
        e?.city,
        e?.state,
        e?.country,
        e?.zipcode,
        e?.address,
        e?.uid,
        e?.closingTime,
        e?.addresslatlng
      ]);

  @override
  bool isValidKey(Object? o) => o is SportvenueRecord;
}
