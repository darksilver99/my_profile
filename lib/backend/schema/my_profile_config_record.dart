import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyProfileConfigRecord extends FirestoreRecord {
  MyProfileConfigRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hits" field.
  int? _hits;
  int get hits => _hits ?? 0;
  bool hasHits() => _hits != null;

  // "password_to_add_project" field.
  String? _passwordToAddProject;
  String get passwordToAddProject => _passwordToAddProject ?? '';
  bool hasPasswordToAddProject() => _passwordToAddProject != null;

  void _initializeFields() {
    _hits = castToType<int>(snapshotData['hits']);
    _passwordToAddProject = snapshotData['password_to_add_project'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('my_profile_config');

  static Stream<MyProfileConfigRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyProfileConfigRecord.fromSnapshot(s));

  static Future<MyProfileConfigRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyProfileConfigRecord.fromSnapshot(s));

  static MyProfileConfigRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyProfileConfigRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyProfileConfigRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyProfileConfigRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyProfileConfigRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyProfileConfigRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyProfileConfigRecordData({
  int? hits,
  String? passwordToAddProject,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hits': hits,
      'password_to_add_project': passwordToAddProject,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyProfileConfigRecordDocumentEquality
    implements Equality<MyProfileConfigRecord> {
  const MyProfileConfigRecordDocumentEquality();

  @override
  bool equals(MyProfileConfigRecord? e1, MyProfileConfigRecord? e2) {
    return e1?.hits == e2?.hits &&
        e1?.passwordToAddProject == e2?.passwordToAddProject;
  }

  @override
  int hash(MyProfileConfigRecord? e) =>
      const ListEquality().hash([e?.hits, e?.passwordToAddProject]);

  @override
  bool isValidKey(Object? o) => o is MyProfileConfigRecord;
}
