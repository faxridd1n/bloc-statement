import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../design_system/design_system.dart';
import '../../../../../design_system/widgets/text_form_field.dart';
import 'components/user_photo.dart';
part 'components/body_part.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(context, title: 'Personal information'),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: REdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const UserPhoto(),
                    24.verticalSpace,
                    _BodyPart(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: MediaQuery.of(context).size.height - 200,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    child: Text(
                      'Save changes',
                      style: AppTextStyle.w500.copyWith(fontSize: 16.sp),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      // ),
    );
  }
}
