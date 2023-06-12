//nb=
//nb=B
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:u_rent_demo/domain/data/models/home/car_details/car_details_model.dart';
import 'package:u_rent_demo/domain/data/service/home/car_details_service.dart';

import '../../../domain/data/models/home/car_details/car_detailModel.dart';

part 'cardetails_state.dart';
part 'cardetails_event.dart';

class CarDetailsBloc extends Bloc<CarDetailsEvent, CarDetailState> {
  CarDetailsBloc() : super(CarDetailState()) {
    on<GetCarDetails>((event, emit) async {
      emit(state.copyWith(getStatus: FormzSubmissionStatus.inProgress));
      var res = await CarDetailService.getCarDetails(
          '2f06eda5-ba7b-40d7-b1b5-ae8888058c22');
      res.fold(
        (l) {
          emit(
            state.copyWith(
              getStatus: FormzSubmissionStatus.failure,
            ),
          );
        },
        (r) {
          emit(
            state.copyWith(
              getStatus: FormzSubmissionStatus.success,
            ),
          );
        },
      );
    });
  }
}
