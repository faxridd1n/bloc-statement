// To parse this JSON data, do
//
//     final carDetailsModel = carDetailsModelFromJson(jsonString);

import 'dart:convert';

List<CarDetailsModel> carDetailsModelFromJson(String str) => List<CarDetailsModel>.from(json.decode(str).map((x) => CarDetailsModel.fromJson(x)));

String carDetailsModelToJson(List<CarDetailsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CarDetailsModel {
    String? name;
    int? brandId;
    bool? isAutomatic;
    bool? isAirconditioned;
    int? doorsCount;
    int? passengersCount;
    String? fuelType;
    String? description;
    String? motorPower;
    String? maxSpeed;
    String? engineSize;
    String? body;
    String? paintCondition;
    String? driveUnit;
    String? lessorId;
    List<String>? photosArray;
    String? districtId;
    bool? isBooked;
    double? pricePerDay;

    CarDetailsModel({
        this.name,
        this.brandId,
        this.isAutomatic,
        this.isAirconditioned,
        this.doorsCount,
        this.passengersCount,
        this.fuelType,
        this.description,
        this.motorPower,
        this.maxSpeed,
        this.engineSize,
        this.body,
        this.paintCondition,
        this.driveUnit,
        this.lessorId,
        this.photosArray,
        this.districtId,
        this.isBooked,
        this.pricePerDay,
    });

    factory CarDetailsModel.fromJson(Map<String, dynamic> json) => CarDetailsModel(
        name: json["name"],
        brandId: json["brand_id"],
        isAutomatic: json["is_automatic"],
        isAirconditioned: json["is_airconditioned"],
        doorsCount: json["doors_count"],
        passengersCount: json["passengers_count"],
        fuelType: json["fuel_type"],
        description: json["description"],
        motorPower: json["motor_power"],
        maxSpeed: json["max_speed"],
        engineSize: json["engine_size"],
        body: json["body"],
        paintCondition: json["paint_condition"],
        driveUnit: json["drive_unit"],
        lessorId: json["lessor_id"],
        photosArray: json["photos_array"] == null ? [] : List<String>.from(json["photos_array"]!.map((x) => x)),
        districtId: json["district_id"],
        isBooked: json["is_booked"],
        pricePerDay: json["price_per_day"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "brand_id": brandId,
        "is_automatic": isAutomatic,
        "is_airconditioned": isAirconditioned,
        "doors_count": doorsCount,
        "passengers_count": passengersCount,
        "fuel_type": fuelType,
        "description": description,
        "motor_power": motorPower,
        "max_speed": maxSpeed,
        "engine_size": engineSize,
        "body": body,
        "paint_condition": paintCondition,
        "drive_unit": driveUnit,
        "lessor_id": lessorId,
        "photos_array": photosArray == null ? [] : List<dynamic>.from(photosArray!.map((x) => x)),
        "district_id": districtId,
        "is_booked": isBooked,
        "price_per_day": pricePerDay,
    };
}
