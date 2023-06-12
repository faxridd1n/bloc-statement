import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import '../components/auth_header.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //bool isVisibility = false;

  ValueNotifier isVisibility = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthHeader(
                  title: 'welcome'.tr(),
                  subtitle: 'loginToTheUrentAppAndRenAVehicleThatIsJustRightForYou'.tr(),
                ),
                32.verticalSpace,
                DownToUp(
                  withPosition: false,
                  delayDurationInMilliseconds: 0.2,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          controller: _phoneController,
                          hintText: 'enterYourPhoneNumber'.tr(),
                          keyboardType: TextInputType.number,
                          maxLength: 19,
                          inputFormat: [
                            MaskTextInputFormatter(
                              mask: '+998 (##) ###-##-##',
                              filter: {'#': RegExp(r'\d')},
                            )
                          ],
                        ),
                        16.verticalSpace,
                        ValueListenableBuilder(
                          valueListenable: isVisibility,
                          builder: (context, refresh, _) =>
                              AppTextFormField(
                                controller: _passwordController,
                                hintText: 'Password'.tr(),
                                keyboardType: TextInputType.text,
                                suffixIcon: GestureDetector(
                                  onTap: (){
                                  if (isVisibility.value != true) {
                                    isVisibility.value = true;
                                  } else {
                                    isVisibility.value = false;
                                  }
                                },
                                  child: isVisibility.value
                                      ? Transform.scale(
                                         scale: 0.6,
                                        child: SvgPicture.asset(
                                        AppIcon.eye
                                        ),
                                      )
                                      : Icon(Icons.visibility_off, color: AppColor.gray,),
                            ),
                            isVisible: isVisibility.value,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                24.verticalSpace,
                DownToUp(
                  delayDurationInMilliseconds: 0.2,
                  child: PrimaryButton(
                    onPressed: () {
                      context.go('/MainPage');
                    },
                    child: Text(
                      'login'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.w500.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                    ),
                  ),
                ),
                32.verticalSpace,
                DownToUp(
                  delayDurationInMilliseconds: 0.2,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'dontHaveAccount'.tr(),
                      style: AppTextStyle.w500.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'signUp'.tr(),
                          style: AppTextStyle.w500.copyWith(
                            fontSize: 16.sp,
                            color: AppColor.blue,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            context.push('/SignUpPage');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
