part of 'cardetails_bloc.dart';

abstract class CarDetailsEvent {}

class GetCarDetails extends CarDetailsEvent {
  final String carId;
  GetCarDetails( this.carId);
}
