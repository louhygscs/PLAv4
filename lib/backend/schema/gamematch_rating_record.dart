import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamematchRatingRecord extends FirestoreRecord {
  GamematchRatingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "gamematch_id" field.
  DocumentReference? _gamematchId;
  DocumentReference? get gamematchId => _gamematchId;
  bool hasGamematchId() => _gamematchId != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _gamematchId = snapshotData['gamematch_id'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gamematch_rating');

  static Stream<GamematchRatingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamematchRatingRecord.fromSnapshot(s));

  static Future<GamematchRatingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamematchRatingRecord.fromSnapshot(s));

  static GamematchRatingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GamematchRatingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamematchRatingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamematchRatingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamematchRatingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamematchRatingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamematchRatingRecordData({
  DocumentReference? gamematchId,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gamematch_id': gamematchId,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamematchRatingRecordDocumentEquality
    implements Equality<GamematchRatingRecord> {
  const GamematchRatingRecordDocumentEquality();

  @override
  bool equals(GamematchRatingRecord? e1, GamematchRatingRecord? e2) {
    return e1?.gamematchId == e2?.gamematchId && e1?.rating == e2?.rating;
  }

  @override
  int hash(GamematchRatingRecord? e) =>
      const ListEquality().hash([e?.gamematchId, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is GamematchRatingRecord;
}
