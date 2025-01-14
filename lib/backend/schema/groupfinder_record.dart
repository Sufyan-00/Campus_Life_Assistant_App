import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupfinderRecord extends FirestoreRecord {
  GroupfinderRecord._(
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
      FirebaseFirestore.instance.collection('groupfinder');

  static Stream<GroupfinderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupfinderRecord.fromSnapshot(s));

  static Future<GroupfinderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupfinderRecord.fromSnapshot(s));

  static GroupfinderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupfinderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupfinderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupfinderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupfinderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupfinderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupfinderRecordData({
  String? groupname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'groupname': groupname,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupfinderRecordDocumentEquality implements Equality<GroupfinderRecord> {
  const GroupfinderRecordDocumentEquality();

  @override
  bool equals(GroupfinderRecord? e1, GroupfinderRecord? e2) {
    return e1?.groupname == e2?.groupname;
  }

  @override
  int hash(GroupfinderRecord? e) => const ListEquality().hash([e?.groupname]);

  @override
  bool isValidKey(Object? o) => o is GroupfinderRecord;
}
