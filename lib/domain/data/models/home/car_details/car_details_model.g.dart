// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarDetailModel _$$_CarDetailModelFromJson(Map<String, dynamic> json) =>
    _$_CarDetailModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      brandId: json['brandId'] as int?,
      modelId: json['modelId'],
      isAutomatic: json['isAutomatic'] as bool?,
      isAirconditioned: json['isAirconditioned'] as bool?,
      doorsCount: json['doorsCount'] as int?,
      passengersCount: json['passengersCount'] as int?,
      fuelType: json['fuelType'] as String?,
      description: json['description'] as String?,
      motorPower: json['motorPower'] as String?,
      maxSpeed: json['maxSpeed'] as String?,
      engineSize: json['engineSize'] as String?,
      body: json['body'] as String?,
      paintCondition: json['paintCondition'] as String?,
      driveUnit: json['driveUnit'] as String?,
      lessorId: json['lessorId'] as String?,
      photosArray: (json['photosArray'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      districtId: json['districtId'] as String?,
      isBooked: json['isBooked'] as bool?,
      pricePerDay: json['pricePerDay'] as int?,
    );

Map<String, dynamic> _$$_CarDetailModelToJson(_$_CarDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brandId': instance.brandId,
      'modelId': instance.modelId,
      'isAutomatic': instance.isAutomatic,
      'isAirconditioned': instance.isAirconditioned,
      'doorsCount': instance.doorsCount,
      'passengersCount': instance.passengersCount,
      'fuelType': instance.fuelType,
      'description': instance.description,
      'motorPower': instance.motorPower,
      'maxSpeed': instance.maxSpeed,
      'engineSize': instance.engineSize,
      'body': instance.body,
      'paintCondition': instance.paintCondition,
      'driveUnit': instance.driveUnit,
      'lessorId': instance.lessorId,
      'photosArray': instance.photosArray,
      'districtId': instance.districtId,
      'isBooked': instance.isBooked,
      'pricePerDay': instance.pricePerDay,
    };
