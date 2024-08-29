import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactListRecord extends FirestoreRecord {
  ContactListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "contact_name" field.
  String? _contactName;
  String get contactName => _contactName ?? '';
  bool hasContactName() => _contactName != null;

  // "contact_phone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  bool hasContactPhone() => _contactPhone != null;

  // "contact_mail" field.
  String? _contactMail;
  String get contactMail => _contactMail ?? '';
  bool hasContactMail() => _contactMail != null;

  // "contact_detail" field.
  String? _contactDetail;
  String get contactDetail => _contactDetail ?? '';
  bool hasContactDetail() => _contactDetail != null;

  void _initializeFields() {
    _createDate = snapshotData['create_date'] as DateTime?;
    _status = castToType<int>(snapshotData['status']);
    _contactName = snapshotData['contact_name'] as String?;
    _contactPhone = snapshotData['contact_phone'] as String?;
    _contactMail = snapshotData['contact_mail'] as String?;
    _contactDetail = snapshotData['contact_detail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contact_list');

  static Stream<ContactListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactListRecord.fromSnapshot(s));

  static Future<ContactListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactListRecord.fromSnapshot(s));

  static ContactListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactListRecordData({
  DateTime? createDate,
  int? status,
  String? contactName,
  String? contactPhone,
  String? contactMail,
  String? contactDetail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_date': createDate,
      'status': status,
      'contact_name': contactName,
      'contact_phone': contactPhone,
      'contact_mail': contactMail,
      'contact_detail': contactDetail,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactListRecordDocumentEquality implements Equality<ContactListRecord> {
  const ContactListRecordDocumentEquality();

  @override
  bool equals(ContactListRecord? e1, ContactListRecord? e2) {
    return e1?.createDate == e2?.createDate &&
        e1?.status == e2?.status &&
        e1?.contactName == e2?.contactName &&
        e1?.contactPhone == e2?.contactPhone &&
        e1?.contactMail == e2?.contactMail &&
        e1?.contactDetail == e2?.contactDetail;
  }

  @override
  int hash(ContactListRecord? e) => const ListEquality().hash([
        e?.createDate,
        e?.status,
        e?.contactName,
        e?.contactPhone,
        e?.contactMail,
        e?.contactDetail
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactListRecord;
}
