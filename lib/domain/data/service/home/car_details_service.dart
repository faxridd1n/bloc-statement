import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../utils/log_service.dart';
import '../../models/home/car_details/car_details_model.dart';
import '../../network/dio/dio_error_exception.dart';

class CarDetailService {
  static Future<Either<String, CarDetailModel>> getCarDetails(String id) async {
    try {
      Response response = await Dio().get(
        'https://rent-car.up.railway.app/v1/cars/2f06eda5-ba7b-40d7-b1b5-ae8888058c22',
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImZkMjU1OTNlLThkZGMtNDE1My1iMTZhLWE2ZWFiYWIwNDA4OSIsImZ1bGxfbmFtZSI6IkpvaG4gRG9lIiwiYmlydGhfZGF0ZSI6IjE5OTAtMDEtMDEiLCJnZW5kZXIiOiJtYWxlIiwiZHJpdmluZ19saWNlbnNlX2FycmF5Ijoie1wiMTIzNDU2XCIsXCI3ODkwMTJcIn0iLCJwYXNzcG9ydCI6IjEyMzQ1Njc4OTAiLCJjcmVhdGVkX2F0IjoiMjAyMy0wNi0wN1QxNzozNToxNy42MjVaIiwidXBkYXRlZF9hdCI6IjIwMjMtMDYtMDdUMTc6MzU6MTcuNjI1WiIsImVtYWlsIjpudWxsLCJhdmF0YXIiOiJodHRwczovL2V4YW1wbGUuY29tL3Byb2ZpbGUuanBnIiwiaXNfdmVyaWZpZWQiOnRydWUsImlhdCI6MTY4NjM4MTU5NSwiZXhwIjoxNjg2NDI0Nzk1fQ.A2U0t25yu6YqAw6_FSOubl0GI7OqnzzSr0z07DFh9Vg',
          },
        ),
      );
      log('statuscode is ${response.statusCode}');
      Log.wtf('statuscode is ${response.statusCode}');

      if (response.statusCode == 200 || response.statusCode == 201) {


        
        Log.wtf(response.data.toString());
        CarDetailModel carDetail = CarDetailModel.fromJson(response.data);
        Log.wtf(carDetail.toString());


        
        return right(carDetail);
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
//eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiZmQyNTU5M2UtOGRkYy00MTUzLWIxNmEtYTZlYWJhYjA0MDg5IiwiZnVsbF9uYW1lIjoiSm9obiBEb2UiLCJiaXJ0aF9kYXRlIjoiMTk5MC0wMS0wMSIsInBob25lIjoiKzk5ODMzMDAyMDcwMCIsImdlbmRlciI6Im1hbGUiLCJkcml2aW5nX2xpY2Vuc2VfYXJyYXkiOiJ7XCIxMjM0NTZcIixcIjc4OTAxMlwifSIsInBhc3Nwb3J0IjoiMTIzNDU2Nzg5MCIsImNyZWF0ZWRfYXQiOiIyMDIzLTA2LTA3VDE3OjM1OjE3LjYyNVoiLCJ1cGRhdGVkX2F0IjoiMjAyMy0wNi0wN1QxNzozNToxNy42MjVaIiwiZW1haWwiOm51bGwsImF2YXRhciI6Imh0dHBzOi8vZXhhbXBsZS5jb20vcHJvZmlsZS5qcGciLCJpc192ZXJpZmllZCI6dHJ1ZX0sImlhdCI6MTY4NjI4OTk2NCwiZXhwIjoxNzE3ODQ3NTY0fQ.jf8l4DEvdLVS9ezGJvqc8Abm9h62NiQkCrPFRoZo5Wo