import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:u_rent_demo/cubits/home/cardetails/cardetails_bloc.dart';
import 'package:u_rent_demo/domain/data/models/home/car_brand/car_brand_model.dart';
import '../../../../cubits/home/carbrand/carbrand_bloc.dart';
import '../../../design_system/design_system.dart';
import '../../../design_system/widgets/car_data_card.dart';
import 'components/brend_card.dart';
import 'components/new_car_card.dart';

//nb=B
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    late CarbrandBloc cubit;
  void initState() {
    super.initState();
    cubit = CarbrandBloc();
    cubit.add(GetCarbrand());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(ctx)=> cubit,
      child: BlocBuilder<CarbrandBloc, CarbrandState>(
        builder: (context, state) {
          if (state.getStatus == FormzSubmissionStatus.inProgress) {
            return CircularProgressIndicator();
          } else if (state.getStatus == FormzSubmissionStatus.success) {
            return view(state.carBrand);
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

view(List<CarbrandModel> model) {
  return Column(
    children: [
      Container(
        height: 64.h,
        padding: EdgeInsets.only(
          left: 16.w,
          top: 10.h,
          bottom: 10.h,
          right: 14.w,
        ),
        child: Row(
          children: [
            Expanded(
              child: SearchTextFormField(
                controller: TextEditingController(),
              ),
            ),
            12.horizontalSpace,
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 44.r,
                width: 44.r,
                decoration: BoxDecoration(
                  color: AppColor.cF2F2F2,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Center(
                  child: AppSvg.asset(
                    AppIcon.settingSearch,
                    height: 20.r,
                    width: 20.r,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: ListView(
          //shrinkWrap: true,
          children: [
            12.verticalSpace,
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 14.w,
              ),
              child: NewCarCard(
                title: 'New Car is coming soon',
                onTab: () {},
              ),
            ),
            16.verticalSpace,
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 14.w,
              ),
              child: Text(
                'Car brands',
                style: AppTextStyle.w600.copyWith(
                  fontSize: 16.sp,
                  color: AppColor.c1A0700,
                ),
              ),
            ),
            12.verticalSpace,
            SizedBox(
              height: 72.h,
              width: double.infinity,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 16.w,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (BuildContext context, int index) {
                  return 8.horizontalSpace;
                },
                itemBuilder: (BuildContext context, int index) {
                  return const BrendCard(
                    image: AppImages.chevroletLogo,
                  );
                },
              ),
            ),
            16.verticalSpace,
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 14.w,
              ),
              child: Text(
                'Popular offers',
                style: AppTextStyle.w600.copyWith(
                  fontSize: 16.sp,
                  color: AppColor.c1A0700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 9.h,
                right: 14.h,
                bottom: 12.h,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return 12.verticalSpace;
                },
                itemBuilder: (BuildContext context, int index) {
                  return const CarDataCard();
                },
              ),
            ),
          ],
        ),
      )
    ],
  );
}
