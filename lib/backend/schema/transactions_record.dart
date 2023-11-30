import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "transactionName" field.
  String? _transactionName;
  String get transactionName => _transactionName ?? '';
  bool hasTransactionName() => _transactionName != null;

  // "transactionAmount" field.
  String? _transactionAmount;
  String get transactionAmount => _transactionAmount ?? '';
  bool hasTransactionAmount() => _transactionAmount != null;

  // "transactionTime" field.
  DateTime? _transactionTime;
  DateTime? get transactionTime => _transactionTime;
  bool hasTransactionTime() => _transactionTime != null;

  // "transactionPlace" field.
  String? _transactionPlace;
  String get transactionPlace => _transactionPlace ?? '';
  bool hasTransactionPlace() => _transactionPlace != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "categoryName" field.
  List<String>? _categoryName;
  List<String> get categoryName => _categoryName ?? const [];
  bool hasCategoryName() => _categoryName != null;

  // "transactionReason" field.
  String? _transactionReason;
  String get transactionReason => _transactionReason ?? '';
  bool hasTransactionReason() => _transactionReason != null;

  // "budgetAssociated" field.
  DocumentReference? _budgetAssociated;
  DocumentReference? get budgetAssociated => _budgetAssociated;
  bool hasBudgetAssociated() => _budgetAssociated != null;

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
    _transactionName = snapshotData['transactionName'] as String?;
    _transactionAmount = snapshotData['transactionAmount'] as String?;
    _transactionTime = snapshotData['transactionTime'] as DateTime?;
    _transactionPlace = snapshotData['transactionPlace'] as String?;
    _category = snapshotData['category'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _categoryName = getDataList(snapshotData['categoryName']);
    _transactionReason = snapshotData['transactionReason'] as String?;
    _budgetAssociated = snapshotData['budgetAssociated'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? transactionName,
  String? transactionAmount,
  DateTime? transactionTime,
  String? transactionPlace,
  DocumentReference? category,
  DocumentReference? user,
  String? transactionReason,
  DocumentReference? budgetAssociated,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'transactionName': transactionName,
      'transactionAmount': transactionAmount,
      'transactionTime': transactionTime,
      'transactionPlace': transactionPlace,
      'category': category,
      'user': user,
      'transactionReason': transactionReason,
      'budgetAssociated': budgetAssociated,
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

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.transactionName == e2?.transactionName &&
        e1?.transactionAmount == e2?.transactionAmount &&
        e1?.transactionTime == e2?.transactionTime &&
        e1?.transactionPlace == e2?.transactionPlace &&
        e1?.category == e2?.category &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.categoryName, e2?.categoryName) &&
        e1?.transactionReason == e2?.transactionReason &&
        e1?.budgetAssociated == e2?.budgetAssociated &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.transactionName,
        e?.transactionAmount,
        e?.transactionTime,
        e?.transactionPlace,
        e?.category,
        e?.user,
        e?.categoryName,
        e?.transactionReason,
        e?.budgetAssociated,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
