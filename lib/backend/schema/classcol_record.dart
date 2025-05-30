import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClasscolRecord extends FirestoreRecord {
  ClasscolRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "classname" field.
  String? _classname;
  String get classname => _classname ?? '';
  bool hasClassname() => _classname != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "cid" field.
  String? _cid;
  String get cid => _cid ?? '';
  bool hasCid() => _cid != null;

  // "lastUpdated" field.
  String? _lastUpdated;
  String get lastUpdated => _lastUpdated ?? '';
  bool hasLastUpdated() => _lastUpdated != null;

  void _initializeFields() {
    _classname = snapshotData['classname'] as String?;
    _location = snapshotData['location'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _cid = snapshotData['cid'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classcol');

  static Stream<ClasscolRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClasscolRecord.fromSnapshot(s));

  static Future<ClasscolRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClasscolRecord.fromSnapshot(s));

  static ClasscolRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClasscolRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClasscolRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClasscolRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClasscolRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClasscolRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClasscolRecordData({
  String? classname,
  String? location,
  DateTime? date,
  String? cid,
  String? lastUpdated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'classname': classname,
      'location': location,
      'date': date,
      'cid': cid,
      'lastUpdated': lastUpdated,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClasscolRecordDocumentEquality implements Equality<ClasscolRecord> {
  const ClasscolRecordDocumentEquality();

  @override
  bool equals(ClasscolRecord? e1, ClasscolRecord? e2) {
    return e1?.classname == e2?.classname &&
        e1?.location == e2?.location &&
        e1?.date == e2?.date &&
        e1?.cid == e2?.cid &&
        e1?.lastUpdated == e2?.lastUpdated;
  }

  @override
  int hash(ClasscolRecord? e) => const ListEquality()
      .hash([e?.classname, e?.location, e?.date, e?.cid, e?.lastUpdated]);

  @override
  bool isValidKey(Object? o) => o is ClasscolRecord;
}
