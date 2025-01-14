import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventnotifyRecord extends FirestoreRecord {
  EventnotifyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "groupname" field.
  String? _groupname;
  String get groupname => _groupname ?? '';
  bool hasGroupname() => _groupname != null;

  void _initializeFields() {
    _groupname = snapshotData['groupname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventnotify');

  static Stream<EventnotifyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventnotifyRecord.fromSnapshot(s));

  static Future<EventnotifyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventnotifyRecord.fromSnapshot(s));

  static EventnotifyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventnotifyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventnotifyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventnotifyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventnotifyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventnotifyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventnotifyRecordData({
  String? groupname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'groupname': groupname,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventnotifyRecordDocumentEquality implements Equality<EventnotifyRecord> {
  const EventnotifyRecordDocumentEquality();

  @override
  bool equals(EventnotifyRecord? e1, EventnotifyRecord? e2) {
    return e1?.groupname == e2?.groupname;
  }

  @override
  int hash(EventnotifyRecord? e) => const ListEquality().hash([e?.groupname]);

  @override
  bool isValidKey(Object? o) => o is EventnotifyRecord;
}
