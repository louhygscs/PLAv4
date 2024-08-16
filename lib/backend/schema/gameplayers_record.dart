import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameplayersRecord extends FirestoreRecord {
  GameplayersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "playerid" field.
  DocumentReference? _playerid;
  DocumentReference? get playerid => _playerid;
  bool hasPlayerid() => _playerid != null;

  // "gamematchid" field.
  DocumentReference? _gamematchid;
  DocumentReference? get gamematchid => _gamematchid;
  bool hasGamematchid() => _gamematchid != null;

  void _initializeFields() {
    _playerid = snapshotData['playerid'] as DocumentReference?;
    _gamematchid = snapshotData['gamematchid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gameplayers');

  static Stream<GameplayersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameplayersRecord.fromSnapshot(s));

  static Future<GameplayersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameplayersRecord.fromSnapshot(s));

  static GameplayersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameplayersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameplayersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameplayersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameplayersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameplayersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameplayersRecordData({
  DocumentReference? playerid,
  DocumentReference? gamematchid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'playerid': playerid,
      'gamematchid': gamematchid,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameplayersRecordDocumentEquality implements Equality<GameplayersRecord> {
  const GameplayersRecordDocumentEquality();

  @override
  bool equals(GameplayersRecord? e1, GameplayersRecord? e2) {
    return e1?.playerid == e2?.playerid && e1?.gamematchid == e2?.gamematchid;
  }

  @override
  int hash(GameplayersRecord? e) =>
      const ListEquality().hash([e?.playerid, e?.gamematchid]);

  @override
  bool isValidKey(Object? o) => o is GameplayersRecord;
}
