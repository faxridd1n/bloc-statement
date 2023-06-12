// To parse this JSON data, do
//
//     final carDetailModel = carDetailModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'car_details_model.freezed.dart';
part 'car_details_model.g.dart';

CarDetailModel carDetailModelFromJson(String str) => CarDetailModel.fromJson(json.decode(str));

String carDetailModelToJson(CarDetailModel data) => json.encode(data.toJson());

@freezed
class CarDetailModel with _$CarDetailModel {
    const factory CarDetailModel({
        String? id,
        String? name,
        int? brandId,
        dynamic? modelId,
        bool? isAutomatic,
        bool? isAirconditioned,
        int? doorsCount,
        int? passengersCount,
        String? fuelType,
        String? description,
        String? motorPower,
        String? maxSpeed,
        String? engineSize,
        String? body,
        String? paintCondition,
        String? driveUnit,
        String? lessorId,
        List<String>? photosArray,
        String? districtId,
        bool? isBooked,
        int? pricePerDay,
    }) = _CarDetailModel;

    factory CarDetailModel.fromJson(Map<String, dynamic> json) => _$CarDetailModelFromJson(json);
}
