import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../utils/log_service.dart';
import '../../models/user_model.dart';
import '../../network/dio/dio_error_exception.dart';
import '../../network/dio/endpoints.dart';

class RegisterService {
  static Future<Either<String, UserModel>> register(UserModel user) async {
    try {
      Response response = await Dio().post(Endpoints.register, data: {
        "full_name": user.firstName,
        "phone": user.phone,
        "password": user.password
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        Log.wtf(response.data['data'].toString());
        UserModel user = UserModel.fromJson(response.data); 
        return right(user);
      } else {
        Log.e(response.data['message'].toString());
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
