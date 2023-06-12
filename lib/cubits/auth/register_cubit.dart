import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:u_rent_demo/cubits/auth/register_state.dart';
import 'package:u_rent_demo/domain/data/database/database.dart';

import '../../domain/data/models/user_model.dart';
import '../../domain/data/service/auth/register_service.dart';
import '../../utils/show_toast.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInit());

  void register(BuildContext context, UserModel newUser) async {
    emit(RegisterLoading());
    var res = await RegisterService.register(newUser);

    res.fold((l) {
       showStyleToast(context, l);
      emit(RegisterError(l));
    }, (newUser) {
      user!.put('user', newUser);
      // user!.get('user')?.token;
       context.push('/MainPage');
      emit(RegisterSuccess());
    });
  }
}
