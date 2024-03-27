import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "driverId" field.
  String? _driverId;
  String get driverId => _driverId ?? '';
  bool hasDriverId() => _driverId != null;

  // "profilePicture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  bool hasProfilePicture() => _profilePicture != null;

  // "technicianId" field.
  String? _technicianId;
  String get technicianId => _technicianId ?? '';
  bool hasTechnicianId() => _technicianId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "technicianServiceProviderMessageThreadId" field.
  String? _technicianServiceProviderMessageThreadId;
  String get technicianServiceProviderMessageThreadId =>
      _technicianServiceProviderMessageThreadId ?? '';
  bool hasTechnicianServiceProviderMessageThreadId() =>
      _technicianServiceProviderMessageThreadId != null;

  // "technicianSupportMessageThreadId" field.
  String? _technicianSupportMessageThreadId;
  String get technicianSupportMessageThreadId =>
      _technicianSupportMessageThreadId ?? '';
  bool hasTechnicianSupportMessageThreadId() =>
      _technicianSupportMessageThreadId != null;

  // "driverFleetManagerMessageThreadId" field.
  String? _driverFleetManagerMessageThreadId;
  String get driverFleetManagerMessageThreadId =>
      _driverFleetManagerMessageThreadId ?? '';
  bool hasDriverFleetManagerMessageThreadId() =>
      _driverFleetManagerMessageThreadId != null;

  // "driverSupportMessageThreadId" field.
  String? _driverSupportMessageThreadId;
  String get driverSupportMessageThreadId =>
      _driverSupportMessageThreadId ?? '';
  bool hasDriverSupportMessageThreadId() =>
      _driverSupportMessageThreadId != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "onDuty" field.
  bool? _onDuty;
  bool get onDuty => _onDuty ?? false;
  bool hasOnDuty() => _onDuty != null;

  // "activeVehicle" field.
  String? _activeVehicle;
  String get activeVehicle => _activeVehicle ?? '';
  bool hasActiveVehicle() => _activeVehicle != null;

  // "fcmToken" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  bool hasFcmToken() => _fcmToken != null;

  void _initializeFields() {
    _companyId = snapshotData['companyId'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _driverId = snapshotData['driverId'] as String?;
    _profilePicture = snapshotData['profilePicture'] as String?;
    _technicianId = snapshotData['technicianId'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _fullName = snapshotData['fullName'] as String?;
    _technicianServiceProviderMessageThreadId =
        snapshotData['technicianServiceProviderMessageThreadId'] as String?;
    _technicianSupportMessageThreadId =
        snapshotData['technicianSupportMessageThreadId'] as String?;
    _driverFleetManagerMessageThreadId =
        snapshotData['driverFleetManagerMessageThreadId'] as String?;
    _driverSupportMessageThreadId =
        snapshotData['driverSupportMessageThreadId'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _onDuty = snapshotData['onDuty'] as bool?;
    _activeVehicle = snapshotData['activeVehicle'] as String?;
    _fcmToken = snapshotData['fcmToken'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? companyId,
  String? companyName,
  String? driverId,
  String? profilePicture,
  String? technicianId,
  String? email,
  String? photoUrl,
  String? uid,
  String? fullName,
  String? technicianServiceProviderMessageThreadId,
  String? technicianSupportMessageThreadId,
  String? driverFleetManagerMessageThreadId,
  String? driverSupportMessageThreadId,
  DateTime? createdTime,
  String? displayName,
  String? phoneNumber,
  bool? onDuty,
  String? activeVehicle,
  String? fcmToken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyId': companyId,
      'companyName': companyName,
      'driverId': driverId,
      'profilePicture': profilePicture,
      'technicianId': technicianId,
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'fullName': fullName,
      'technicianServiceProviderMessageThreadId':
          technicianServiceProviderMessageThreadId,
      'technicianSupportMessageThreadId': technicianSupportMessageThreadId,
      'driverFleetManagerMessageThreadId': driverFleetManagerMessageThreadId,
      'driverSupportMessageThreadId': driverSupportMessageThreadId,
      'created_time': createdTime,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'onDuty': onDuty,
      'activeVehicle': activeVehicle,
      'fcmToken': fcmToken,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.companyId == e2?.companyId &&
        e1?.companyName == e2?.companyName &&
        e1?.driverId == e2?.driverId &&
        e1?.profilePicture == e2?.profilePicture &&
        e1?.technicianId == e2?.technicianId &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.fullName == e2?.fullName &&
        e1?.technicianServiceProviderMessageThreadId ==
            e2?.technicianServiceProviderMessageThreadId &&
        e1?.technicianSupportMessageThreadId ==
            e2?.technicianSupportMessageThreadId &&
        e1?.driverFleetManagerMessageThreadId ==
            e2?.driverFleetManagerMessageThreadId &&
        e1?.driverSupportMessageThreadId == e2?.driverSupportMessageThreadId &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.onDuty == e2?.onDuty &&
        e1?.activeVehicle == e2?.activeVehicle &&
        e1?.fcmToken == e2?.fcmToken;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.companyId,
        e?.companyName,
        e?.driverId,
        e?.profilePicture,
        e?.technicianId,
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.fullName,
        e?.technicianServiceProviderMessageThreadId,
        e?.technicianSupportMessageThreadId,
        e?.driverFleetManagerMessageThreadId,
        e?.driverSupportMessageThreadId,
        e?.createdTime,
        e?.displayName,
        e?.phoneNumber,
        e?.onDuty,
        e?.activeVehicle,
        e?.fcmToken
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
