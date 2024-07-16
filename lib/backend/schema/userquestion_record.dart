import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserquestionRecord extends FirestoreRecord {
  UserquestionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "skilllevel" field.
  String? _skilllevel;
  String get skilllevel => _skilllevel ?? '';
  bool hasSkilllevel() => _skilllevel != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

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

  void _initializeFields() {
    _age = castToType<int>(snapshotData['age']);
    _weight = castToType<double>(snapshotData['weight']);
    _height = castToType<double>(snapshotData['height']);
    _gender = snapshotData['gender'] as String?;
    _skilllevel = snapshotData['skilllevel'] as String?;
    _uid = snapshotData['uid'] as String?;
    _name = snapshotData['name'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _country = snapshotData['country'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userquestion');

  static Stream<UserquestionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserquestionRecord.fromSnapshot(s));

  static Future<UserquestionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserquestionRecord.fromSnapshot(s));

  static UserquestionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserquestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserquestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserquestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserquestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserquestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserquestionRecordData({
  int? age,
  double? weight,
  double? height,
  String? gender,
  String? skilllevel,
  String? uid,
  String? name,
  String? city,
  String? state,
  String? country,
  String? zipcode,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'age': age,
      'weight': weight,
      'height': height,
      'gender': gender,
      'skilllevel': skilllevel,
      'uid': uid,
      'name': name,
      'city': city,
      'state': state,
      'country': country,
      'zipcode': zipcode,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserquestionRecordDocumentEquality
    implements Equality<UserquestionRecord> {
  const UserquestionRecordDocumentEquality();

  @override
  bool equals(UserquestionRecord? e1, UserquestionRecord? e2) {
    return e1?.age == e2?.age &&
        e1?.weight == e2?.weight &&
        e1?.height == e2?.height &&
        e1?.gender == e2?.gender &&
        e1?.skilllevel == e2?.skilllevel &&
        e1?.uid == e2?.uid &&
        e1?.name == e2?.name &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.country == e2?.country &&
        e1?.zipcode == e2?.zipcode &&
        e1?.address == e2?.address;
  }

  @override
  int hash(UserquestionRecord? e) => const ListEquality().hash([
        e?.age,
        e?.weight,
        e?.height,
        e?.gender,
        e?.skilllevel,
        e?.uid,
        e?.name,
        e?.city,
        e?.state,
        e?.country,
        e?.zipcode,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is UserquestionRecord;
}
