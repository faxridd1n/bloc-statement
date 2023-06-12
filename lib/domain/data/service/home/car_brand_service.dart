//nb=
import 'dart:developer';
import 'package:u_rent_demo/domain/data/models/home/car_brand/car_brand_model.dart';

import '../../network/dio/endpoints.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../utils/log_service.dart';
import '../../network/dio/dio_error_exception.dart';

//nb=
class CarBrandService {
  static Future<Either<String, List<CarbrandModel>>> getCarbrands() async {
    try {
      Response response = await Dio().get(
        'rent-car.up.railway.app/v1/brands',
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImZkMjU1OTNlLThkZGMtNDE1My1iMTZhLWE2ZWFiYWIwNDA4OSIsImZ1bGxfbmFtZSI6IkpvaG4gRG9lIiwiYmlydGhfZGF0ZSI6IjE5OTAtMDEtMDEiLCJnZW5kZXIiOiJtYWxlIiwiZHJpdmluZ19saWNlbnNlX2FycmF5Ijoie1wiMTIzNDU2XCIsXCI3ODkwMTJcIn0iLCJwYXNzcG9ydCI6IjEyMzQ1Njc4OTAiLCJjcmVhdGVkX2F0IjoiMjAyMy0wNi0wN1QxNzozNToxNy42MjVaIiwidXBkYXRlZF9hdCI6IjIwMjMtMDYtMDdUMTc6MzU6MTcuNjI1WiIsImVtYWlsIjpudWxsLCJhdmF0YXIiOiJodHRwczovL2V4YW1wbGUuY29tL3Byb2ZpbGUuanBnIiwiaXNfdmVyaWZpZWQiOnRydWUsImlhdCI6MTY4NjM4MTU5NSwiZXhwIjoxNjg2NDI0Nzk1fQ.A2U0t25yu6YqAw6_FSOubl0GI7OqnzzSr0z07DFh9Vg',
          },
        ),
      );
      log('statuscode is ${response.statusCode}');
      Log.wtf('statuscode is ${response.statusCode}');
      List<CarbrandModel> carbrands = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        Log.wtf(response.data.toString());
        for (var e in response.data) {
          carbrands.add(CarbrandModel.fromJson(e));
        }
        
        Log.wtf(carbrands.toString());

        return right(carbrands);
      } else {
        Log.e(response.data.toString());
        Log.e(DioExceptions.fromDioError(response.data as DioError).toString());
        return left(
            DioExceptions.fromDioError(response.data as DioError).toString());
      }
    } on DioError catch (e) {
      Log.e(DioExceptions.fromDioError(e).toString());
      Log.e(e.response.toString());

      return left(DioExceptions.fromDioError(e).toString());
    } catch (m) {
      Log.e(m.toString());
      return left(m.toString());
    }
  }
}
