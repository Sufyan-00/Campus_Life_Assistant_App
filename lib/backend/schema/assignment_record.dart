import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentRecord extends FirestoreRecord {
  AssignmentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "assignmentTitle" field.
  String? _assignmentTitle;
  String get assignmentTitle => _assignmentTitle ?? '';
  bool hasAssignmentTitle() => _assignmentTitle != null;

  // "deadline" field.
  DateTime? _deadline;
  DateTime? get deadline => _deadline;
  bool hasDeadline() => _deadline != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  void _initializeFields() {
    _assignmentTitle = snapshotData['assignmentTitle'] as String?;
    _deadline = snapshotData['deadline'] as DateTime?;
    _note = snapshotData['note'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assignment');

  static Stream<AssignmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentRecord.fromSnapshot(s));

  static Future<AssignmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentRecord.fromSnapshot(s));

  static AssignmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentRecordData({
  String? assignmentTitle,
  DateTime? deadline,
  String? note,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignmentTitle': assignmentTitle,
      'deadline': deadline,
      'note': note,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentRecordDocumentEquality implements Equality<AssignmentRecord> {
  const AssignmentRecordDocumentEquality();

  @override
  bool equals(AssignmentRecord? e1, AssignmentRecord? e2) {
    return e1?.assignmentTitle == e2?.assignmentTitle &&
        e1?.deadline == e2?.deadline &&
        e1?.note == e2?.note;
  }

  @override
  int hash(AssignmentRecord? e) =>
      const ListEquality().hash([e?.assignmentTitle, e?.deadline, e?.note]);

  @override
  bool isValidKey(Object? o) => o is AssignmentRecord;
}
