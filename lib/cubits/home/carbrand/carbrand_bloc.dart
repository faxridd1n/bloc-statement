//nb=
//nb=B
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:u_rent_demo/domain/data/service/home/car_brand_service.dart';

import '../../../domain/data/models/home/car_brand/car_brand_model.dart';


part 'carbrand_state.dart';
part 'carbrand_event.dart';

class CarbrandBloc extends Bloc<CarbrandEvent, CarbrandState> {
  CarbrandBloc() : super(CarbrandState()) {
    on<GetCarbrand>((event, emit) async {
      emit(state.copyWith(getStatus: FormzSubmissionStatus.inProgress));
      var res = await CarBrandService.getCarbrands();
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
