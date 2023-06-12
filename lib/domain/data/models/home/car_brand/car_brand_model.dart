// To parse this JSON data, do
//
//     final carbrandModel = carbrandModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'car_brand_model.freezed.dart';
part 'car_brand_model.g.dart';

List<CarbrandModel> carbrandModelFromJson(String str) => List<CarbrandModel>.from(json.decode(str).map((x) => CarbrandModel.fromJson(x)));

String carbrandModelToJson(List<CarbrandModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CarbrandModel with _$CarbrandModel {
    const factory CarbrandModel({
        int? id,
        String? name,
        String? logo,
    }) = _CarbrandModel;

    factory CarbrandModel.fromJson(Map<String, dynamic> json) => _$CarbrandModelFromJson(json);
}
