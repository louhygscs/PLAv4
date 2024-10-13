import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardinfoRecord extends FirestoreRecord {
  CardinfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "aliasname" field.
  String? _aliasname;
  String get aliasname => _aliasname ?? '';
  bool hasAliasname() => _aliasname != null;

  // "cardnumber" field.
  String? _cardnumber;
  String get cardnumber => _cardnumber ?? '';
  bool hasCardnumber() => _cardnumber != null;

  // "cvv" field.
  String? _cvv;
  String get cvv => _cvv ?? '';
  bool hasCvv() => _cvv != null;

  // "expiredate" field.
  String? _expiredate;
  String get expiredate => _expiredate ?? '';
  bool hasExpiredate() => _expiredate != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _aliasname = snapshotData['aliasname'] as String?;
    _cardnumber = snapshotData['cardnumber'] as String?;
    _cvv = snapshotData['cvv'] as String?;
    _expiredate = snapshotData['expiredate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cardinfo');

  static Stream<CardinfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardinfoRecord.fromSnapshot(s));

  static Future<CardinfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardinfoRecord.fromSnapshot(s));

  static CardinfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CardinfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardinfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardinfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardinfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardinfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardinfoRecordData({
  DocumentReference? userId,
  String? aliasname,
  String? cardnumber,
  String? cvv,
  String? expiredate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'aliasname': aliasname,
      'cardnumber': cardnumber,
      'cvv': cvv,
      'expiredate': expiredate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardinfoRecordDocumentEquality implements Equality<CardinfoRecord> {
  const CardinfoRecordDocumentEquality();

  @override
  bool equals(CardinfoRecord? e1, CardinfoRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.aliasname == e2?.aliasname &&
        e1?.cardnumber == e2?.cardnumber &&
        e1?.cvv == e2?.cvv &&
        e1?.expiredate == e2?.expiredate;
  }

  @override
  int hash(CardinfoRecord? e) => const ListEquality()
      .hash([e?.userId, e?.aliasname, e?.cardnumber, e?.cvv, e?.expiredate]);

  @override
  bool isValidKey(Object? o) => o is CardinfoRecord;
}
