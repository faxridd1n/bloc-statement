import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import '../../../../../cubits/home/cardetails/cardetails_bloc.dart';
import '../../../../../domain/data/models/home/car_details/car_details_model.dart';
import '../../../../design_system/design_system.dart';
import 'components/bottom_car_data.dart';
import 'components/budy_car_data.dart';
import 'components/head_car_data.dart';

class CarDataPage extends StatefulWidget {
  const CarDataPage({super.key});

  @override
  State<CarDataPage> createState() => _CarDataPageState();
}

class _CarDataPageState extends State<CarDataPage> {
  late CarDetailsBloc cubit;
  void initState() {
    super.initState();
    cubit = CarDetailsBloc();
    cubit.add(GetCarDetails('2f06eda5-ba7b-40d7-b1b5-ae8888058c22'));
  }
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(ctx)=> cubit,
      child: BlocBuilder<CarDetailsBloc, CarDetailState>(
        builder: (context, state) {
          if (state.getStatus == FormzSubmissionStatus.inProgress) {
            return CircularProgressIndicator();
          } else if (state.getStatus == FormzSubmissionStatus.success) {
            return view(context,state.carModel);
          } 
          else if (state.getStatus == FormzSubmissionStatus.failure) {
            return CircularProgressIndicator();
          }
          else{
            return Center(
            child: Text('Oops something is wrong'),
          );
          }

          
        },
      ),
    );
  }
}

view(BuildContext context,CarDetailModel model) {
  return Scaffold(
    appBar: MyAppBar(
      title: model.name??'ghfgv',
      icon: AppIcon.favorites,
      onTab: () {
        context.push('/BookingTimePage');
      },
    ),
    body: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                HeadCarData(
                  carImageLists: const [
                    AppImages.autoDataImage,
                    AppImages.autoDataImage,
                    AppImages.autoDataImage,
                    AppImages.autoDataImage,
                  ],
                ),
                 BudyCarData(model),
              ],
            ),
          ),
        ),
        const BottomCarData(),
      ],
    ),
  );
}
