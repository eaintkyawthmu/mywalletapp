import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetListRecord extends FirestoreRecord {
  BudgetListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "budget" field.
  List<String>? _budget;
  List<String> get budget => _budget ?? const [];
  bool hasBudget() => _budget != null;

  // "budgetUser" field.
  DocumentReference? _budgetUser;
  DocumentReference? get budgetUser => _budgetUser;
  bool hasBudgetUser() => _budgetUser != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _budget = getDataList(snapshotData['budget']);
    _budgetUser = snapshotData['budgetUser'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budgetList');

  static Stream<BudgetListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BudgetListRecord.fromSnapshot(s));

  static Future<BudgetListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BudgetListRecord.fromSnapshot(s));

  static BudgetListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BudgetListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BudgetListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BudgetListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BudgetListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BudgetListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBudgetListRecordData({
  DocumentReference? budgetUser,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'budgetUser': budgetUser,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class BudgetListRecordDocumentEquality implements Equality<BudgetListRecord> {
  const BudgetListRecordDocumentEquality();

  @override
  bool equals(BudgetListRecord? e1, BudgetListRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.budget, e2?.budget) &&
        e1?.budgetUser == e2?.budgetUser &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(BudgetListRecord? e) => const ListEquality().hash([
        e?.budget,
        e?.budgetUser,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is BudgetListRecord;
}
