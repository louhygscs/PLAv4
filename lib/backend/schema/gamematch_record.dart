import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamematchRecord extends FirestoreRecord {
  GamematchRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "game_img" field.
  String? _gameImg;
  String get gameImg => _gameImg ?? '';
  bool hasGameImg() => _gameImg != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "broadcast_link" field.
  String? _broadcastLink;
  String get broadcastLink => _broadcastLink ?? '';
  bool hasBroadcastLink() => _broadcastLink != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "close_time" field.
  DateTime? _closeTime;
  DateTime? get closeTime => _closeTime;
  bool hasCloseTime() => _closeTime != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "required_player" field.
  int? _requiredPlayer;
  int get requiredPlayer => _requiredPlayer ?? 0;
  bool hasRequiredPlayer() => _requiredPlayer != null;

  // "sport_category" field.
  DocumentReference? _sportCategory;
  DocumentReference? get sportCategory => _sportCategory;
  bool hasSportCategory() => _sportCategory != null;

  // "fee" field.
  double? _fee;
  double get fee => _fee ?? 0.0;
  bool hasFee() => _fee != null;

  // "slotleft" field.
  int? _slotleft;
  int get slotleft => _slotleft ?? 0;
  bool hasSlotleft() => _slotleft != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _gameImg = snapshotData['game_img'] as String?;
    _status = snapshotData['status'] as String?;
    _broadcastLink = snapshotData['broadcast_link'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _closeTime = snapshotData['close_time'] as DateTime?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _requiredPlayer = castToType<int>(snapshotData['required_player']);
    _sportCategory = snapshotData['sport_category'] as DocumentReference?;
    _fee = castToType<double>(snapshotData['fee']);
    _slotleft = castToType<int>(snapshotData['slotleft']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gamematch');

  static Stream<GamematchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamematchRecord.fromSnapshot(s));

  static Future<GamematchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamematchRecord.fromSnapshot(s));

  static GamematchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GamematchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamematchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamematchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamematchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamematchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamematchRecordData({
  String? title,
  String? description,
  String? gameImg,
  String? status,
  String? broadcastLink,
  DateTime? startTime,
  DateTime? closeTime,
  DocumentReference? userId,
  int? requiredPlayer,
  DocumentReference? sportCategory,
  double? fee,
  int? slotleft,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'game_img': gameImg,
      'status': status,
      'broadcast_link': broadcastLink,
      'start_time': startTime,
      'close_time': closeTime,
      'user_id': userId,
      'required_player': requiredPlayer,
      'sport_category': sportCategory,
      'fee': fee,
      'slotleft': slotleft,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamematchRecordDocumentEquality implements Equality<GamematchRecord> {
  const GamematchRecordDocumentEquality();

  @override
  bool equals(GamematchRecord? e1, GamematchRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.gameImg == e2?.gameImg &&
        e1?.status == e2?.status &&
        e1?.broadcastLink == e2?.broadcastLink &&
        e1?.startTime == e2?.startTime &&
        e1?.closeTime == e2?.closeTime &&
        e1?.userId == e2?.userId &&
        e1?.requiredPlayer == e2?.requiredPlayer &&
        e1?.sportCategory == e2?.sportCategory &&
        e1?.fee == e2?.fee &&
        e1?.slotleft == e2?.slotleft;
  }

  @override
  int hash(GamematchRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.gameImg,
        e?.status,
        e?.broadcastLink,
        e?.startTime,
        e?.closeTime,
        e?.userId,
        e?.requiredPlayer,
        e?.sportCategory,
        e?.fee,
        e?.slotleft
      ]);

  @override
  bool isValidKey(Object? o) => o is GamematchRecord;
}
