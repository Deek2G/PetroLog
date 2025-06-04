import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntriesRecord extends FirestoreRecord {
  EntriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "totalCost" field.
  double? _totalCost;
  double get totalCost => _totalCost ?? 0.0;
  bool hasTotalCost() => _totalCost != null;

  // "pricePerLiter" field.
  double? _pricePerLiter;
  double get pricePerLiter => _pricePerLiter ?? 0.0;
  bool hasPricePerLiter() => _pricePerLiter != null;

  // "fuelAmount" field.
  double? _fuelAmount;
  double get fuelAmount => _fuelAmount ?? 0.0;
  bool hasFuelAmount() => _fuelAmount != null;

  // "curr_odometer" field.
  int? _currOdometer;
  int get currOdometer => _currOdometer ?? 0;
  bool hasCurrOdometer() => _currOdometer != null;

  // "gas_station" field.
  String? _gasStation;
  String get gasStation => _gasStation ?? '';
  bool hasGasStation() => _gasStation != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "vehicleName" field.
  String? _vehicleName;
  String get vehicleName => _vehicleName ?? '';
  bool hasVehicleName() => _vehicleName != null;

  void _initializeFields() {
    _totalCost = castToType<double>(snapshotData['totalCost']);
    _pricePerLiter = castToType<double>(snapshotData['pricePerLiter']);
    _fuelAmount = castToType<double>(snapshotData['fuelAmount']);
    _currOdometer = castToType<int>(snapshotData['curr_odometer']);
    _gasStation = snapshotData['gas_station'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _vehicleName = snapshotData['vehicleName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entries');

  static Stream<EntriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EntriesRecord.fromSnapshot(s));

  static Future<EntriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EntriesRecord.fromSnapshot(s));

  static EntriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EntriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EntriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EntriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EntriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EntriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEntriesRecordData({
  double? totalCost,
  double? pricePerLiter,
  double? fuelAmount,
  int? currOdometer,
  String? gasStation,
  DocumentReference? user,
  DateTime? createdDate,
  String? vehicleName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'totalCost': totalCost,
      'pricePerLiter': pricePerLiter,
      'fuelAmount': fuelAmount,
      'curr_odometer': currOdometer,
      'gas_station': gasStation,
      'user': user,
      'created_date': createdDate,
      'vehicleName': vehicleName,
    }.withoutNulls,
  );

  return firestoreData;
}

class EntriesRecordDocumentEquality implements Equality<EntriesRecord> {
  const EntriesRecordDocumentEquality();

  @override
  bool equals(EntriesRecord? e1, EntriesRecord? e2) {
    return e1?.totalCost == e2?.totalCost &&
        e1?.pricePerLiter == e2?.pricePerLiter &&
        e1?.fuelAmount == e2?.fuelAmount &&
        e1?.currOdometer == e2?.currOdometer &&
        e1?.gasStation == e2?.gasStation &&
        e1?.user == e2?.user &&
        e1?.createdDate == e2?.createdDate &&
        e1?.vehicleName == e2?.vehicleName;
  }

  @override
  int hash(EntriesRecord? e) => const ListEquality().hash([
        e?.totalCost,
        e?.pricePerLiter,
        e?.fuelAmount,
        e?.currOdometer,
        e?.gasStation,
        e?.user,
        e?.createdDate,
        e?.vehicleName
      ]);

  @override
  bool isValidKey(Object? o) => o is EntriesRecord;
}
