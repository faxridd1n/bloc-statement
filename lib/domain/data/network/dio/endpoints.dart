// Project imports:
// ignore_for_file: non_constant_identifier_names

class Endpoints {
  Endpoints._();
  static String serverProduction = 'rent-car.up.railway.app/';
  static String serverDevelopment = 'http://192.168.0.131:3000/';

  static bool isTester = false;

  static String baseUrl = isTester ? serverDevelopment : serverProduction;

  //e89105f8-726d-498b-9fe3-692abfc9d087
  // receiveTimeout
  static const int receiveTimeout = 15000;
  // connectTimeout
  static const int connectionTimeout = 15000; //2200 010

//auth
  static String register = '${baseUrl}v1/auth/register';
  static String carDetails = '${baseUrl}v1/cars/';
  static String carBrands = '${baseUrl}v1/brands';
}
