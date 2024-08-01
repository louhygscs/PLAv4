import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SportcategoryRecord extends FirestoreRecord {
  SportcategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sportname" field.
  String? _sportname;
  String get sportname => _sportname ?? '';
  bool hasSportname() => _sportname != null;

  // "img_url" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  void _initializeFields() {
    _sportname = snapshotData['sportname'] as String?;
    _imgUrl = snapshotData['img_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sportcategory');

  static Stream<SportcategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SportcategoryRecord.fromSnapshot(s));

  static Future<SportcategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SportcategoryRecord.fromSnapshot(s));

  static SportcategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SportcategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SportcategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SportcategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SportcategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SportcategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSportcategoryRecordData({
  String? sportname,
  String? imgUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sportname': sportname,
      'img_url': imgUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SportcategoryRecordDocumentEquality
    implements Equality<SportcategoryRecord> {
  const SportcategoryRecordDocumentEquality();

  @override
  bool equals(SportcategoryRecord? e1, SportcategoryRecord? e2) {
    return e1?.sportname == e2?.sportname && e1?.imgUrl == e2?.imgUrl;
  }

  @override
  int hash(SportcategoryRecord? e) =>
      const ListEquality().hash([e?.sportname, e?.imgUrl]);

  @override
  bool isValidKey(Object? o) => o is SportcategoryRecord;
}
