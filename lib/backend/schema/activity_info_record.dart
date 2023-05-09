import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'activity_info_record.g.dart';

abstract class ActivityInfoRecord
    implements Built<ActivityInfoRecord, ActivityInfoRecordBuilder> {
  static Serializer<ActivityInfoRecord> get serializer =>
      _$activityInfoRecordSerializer;

  @BuiltValueField(wireName: 'DateofActivity')
  String? get dateofActivity;

  @BuiltValueField(wireName: 'TimeOfActivity')
  DateTime? get timeOfActivity;

  @BuiltValueField(wireName: 'LocationOfActivity')
  String? get locationOfActivity;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Suspesious')
  bool? get suspesious;

  String? get uploadimage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ActivityInfoRecordBuilder builder) => builder
    ..dateofActivity = ''
    ..locationOfActivity = ''
    ..description = ''
    ..suspesious = false
    ..uploadimage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activity_info');

  static Stream<ActivityInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActivityInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActivityInfoRecord._();
  factory ActivityInfoRecord(
          [void Function(ActivityInfoRecordBuilder) updates]) =
      _$ActivityInfoRecord;

  static ActivityInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActivityInfoRecordData({
  String? dateofActivity,
  DateTime? timeOfActivity,
  String? locationOfActivity,
  String? description,
  bool? suspesious,
  String? uploadimage,
}) {
  final firestoreData = serializers.toFirestore(
    ActivityInfoRecord.serializer,
    ActivityInfoRecord(
      (a) => a
        ..dateofActivity = dateofActivity
        ..timeOfActivity = timeOfActivity
        ..locationOfActivity = locationOfActivity
        ..description = description
        ..suspesious = suspesious
        ..uploadimage = uploadimage,
    ),
  );

  return firestoreData;
}
