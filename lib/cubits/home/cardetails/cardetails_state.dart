//nb=

// import 'package:equatable/equ//atable.dart';
part of 'cardetails_bloc.dart';

class CarDetailState extends Equatable {
  final FormzSubmissionStatus getStatus;
  final CarDetailModel carModel;
  CarDetailState({
    this.carModel = const CarDetailModel(),
    this.getStatus = FormzSubmissionStatus.failure,
  });

  CarDetailState copyWith({
    CarDetailModel? carModel,
    FormzSubmissionStatus? getStatus,
  }) {
    return CarDetailState(
      carModel: carModel ?? this.carModel,
      getStatus: getStatus ?? this.getStatus,
    );
  }

  @override
  List<Object?> get props => [carModel,getStatus];
}
