// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivityInfoRecord> _$activityInfoRecordSerializer =
    new _$ActivityInfoRecordSerializer();

class _$ActivityInfoRecordSerializer
    implements StructuredSerializer<ActivityInfoRecord> {
  @override
  final Iterable<Type> types = const [ActivityInfoRecord, _$ActivityInfoRecord];
  @override
  final String wireName = 'ActivityInfoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ActivityInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dateofActivity;
    if (value != null) {
      result
        ..add('DateofActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeOfActivity;
    if (value != null) {
      result
        ..add('TimeOfActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.locationOfActivity;
    if (value != null) {
      result
        ..add('LocationOfActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.suspesious;
    if (value != null) {
      result
        ..add('Suspesious')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uploadimage;
    if (value != null) {
      result
        ..add('uploadimage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ActivityInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivityInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'DateofActivity':
          result.dateofActivity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TimeOfActivity':
          result.timeOfActivity = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'LocationOfActivity':
          result.locationOfActivity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Suspesious':
          result.suspesious = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'uploadimage':
          result.uploadimage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ActivityInfoRecord extends ActivityInfoRecord {
  @override
  final String? dateofActivity;
  @override
  final DateTime? timeOfActivity;
  @override
  final String? locationOfActivity;
  @override
  final String? description;
  @override
  final bool? suspesious;
  @override
  final String? uploadimage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActivityInfoRecord(
          [void Function(ActivityInfoRecordBuilder)? updates]) =>
      (new ActivityInfoRecordBuilder()..update(updates))._build();

  _$ActivityInfoRecord._(
      {this.dateofActivity,
      this.timeOfActivity,
      this.locationOfActivity,
      this.description,
      this.suspesious,
      this.uploadimage,
      this.ffRef})
      : super._();

  @override
  ActivityInfoRecord rebuild(
          void Function(ActivityInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityInfoRecordBuilder toBuilder() =>
      new ActivityInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityInfoRecord &&
        dateofActivity == other.dateofActivity &&
        timeOfActivity == other.timeOfActivity &&
        locationOfActivity == other.locationOfActivity &&
        description == other.description &&
        suspesious == other.suspesious &&
        uploadimage == other.uploadimage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, dateofActivity.hashCode),
                            timeOfActivity.hashCode),
                        locationOfActivity.hashCode),
                    description.hashCode),
                suspesious.hashCode),
            uploadimage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityInfoRecord')
          ..add('dateofActivity', dateofActivity)
          ..add('timeOfActivity', timeOfActivity)
          ..add('locationOfActivity', locationOfActivity)
          ..add('description', description)
          ..add('suspesious', suspesious)
          ..add('uploadimage', uploadimage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActivityInfoRecordBuilder
    implements Builder<ActivityInfoRecord, ActivityInfoRecordBuilder> {
  _$ActivityInfoRecord? _$v;

  String? _dateofActivity;
  String? get dateofActivity => _$this._dateofActivity;
  set dateofActivity(String? dateofActivity) =>
      _$this._dateofActivity = dateofActivity;

  DateTime? _timeOfActivity;
  DateTime? get timeOfActivity => _$this._timeOfActivity;
  set timeOfActivity(DateTime? timeOfActivity) =>
      _$this._timeOfActivity = timeOfActivity;

  String? _locationOfActivity;
  String? get locationOfActivity => _$this._locationOfActivity;
  set locationOfActivity(String? locationOfActivity) =>
      _$this._locationOfActivity = locationOfActivity;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _suspesious;
  bool? get suspesious => _$this._suspesious;
  set suspesious(bool? suspesious) => _$this._suspesious = suspesious;

  String? _uploadimage;
  String? get uploadimage => _$this._uploadimage;
  set uploadimage(String? uploadimage) => _$this._uploadimage = uploadimage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActivityInfoRecordBuilder() {
    ActivityInfoRecord._initializeBuilder(this);
  }

  ActivityInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateofActivity = $v.dateofActivity;
      _timeOfActivity = $v.timeOfActivity;
      _locationOfActivity = $v.locationOfActivity;
      _description = $v.description;
      _suspesious = $v.suspesious;
      _uploadimage = $v.uploadimage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivityInfoRecord;
  }

  @override
  void update(void Function(ActivityInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityInfoRecord build() => _build();

  _$ActivityInfoRecord _build() {
    final _$result = _$v ??
        new _$ActivityInfoRecord._(
            dateofActivity: dateofActivity,
            timeOfActivity: timeOfActivity,
            locationOfActivity: locationOfActivity,
            description: description,
            suspesious: suspesious,
            uploadimage: uploadimage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
