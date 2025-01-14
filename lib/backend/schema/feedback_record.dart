import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "feedcategory" field.
  String? _feedcategory;
  String get feedcategory => _feedcategory ?? '';
  bool hasFeedcategory() => _feedcategory != null;

  // "feedtext" field.
  String? _feedtext;
  String get feedtext => _feedtext ?? '';
  bool hasFeedtext() => _feedtext != null;

  void _initializeFields() {
    _feedcategory = snapshotData['feedcategory'] as String?;
    _feedtext = snapshotData['feedtext'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  String? feedcategory,
  String? feedtext,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'feedcategory': feedcategory,
      'feedtext': feedtext,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.feedcategory == e2?.feedcategory && e1?.feedtext == e2?.feedtext;
  }

  @override
  int hash(FeedbackRecord? e) =>
      const ListEquality().hash([e?.feedcategory, e?.feedtext]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
