import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiclesRecord extends FirestoreRecord {
  VehiclesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  bool hasMake() => _make != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "gas_type" field.
  String? _gasType;
  String get gasType => _gasType ?? '';
  bool hasGasType() => _gasType != null;

  // "vehicle_name" field.
  String? _vehicleName;
  String get vehicleName => _vehicleName ?? '';
  bool hasVehicleName() => _vehicleName != null;

  void _initializeFields() {
    _make = snapshotData['make'] as String?;
    _model = snapshotData['model'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _year = snapshotData['year'] as String?;
    _gasType = snapshotData['gas_type'] as String?;
    _vehicleName = snapshotData['vehicle_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicles');

  static Stream<VehiclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiclesRecord.fromSnapshot(s));

  static Future<VehiclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiclesRecord.fromSnapshot(s));

  static VehiclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiclesRecordData({
  String? make,
  String? model,
  DocumentReference? user,
  DateTime? createdDate,
  String? year,
  String? gasType,
  String? vehicleName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'make': make,
      'model': model,
      'user': user,
      'created_date': createdDate,
      'year': year,
      'gas_type': gasType,
      'vehicle_name': vehicleName,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiclesRecordDocumentEquality implements Equality<VehiclesRecord> {
  const VehiclesRecordDocumentEquality();

  @override
  bool equals(VehiclesRecord? e1, VehiclesRecord? e2) {
    return e1?.make == e2?.make &&
        e1?.model == e2?.model &&
        e1?.user == e2?.user &&
        e1?.createdDate == e2?.createdDate &&
        e1?.year == e2?.year &&
        e1?.gasType == e2?.gasType &&
        e1?.vehicleName == e2?.vehicleName;
  }

  @override
  int hash(VehiclesRecord? e) => const ListEquality().hash([
        e?.make,
        e?.model,
        e?.user,
        e?.createdDate,
        e?.year,
        e?.gasType,
        e?.vehicleName
      ]);

  @override
  bool isValidKey(Object? o) => o is VehiclesRecord;
}
