import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:u_rent_demo/cubits/auth/register_cubit.dart';
import 'package:u_rent_demo/cubits/auth/register_state.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import '../../../../domain/data/models/user_model.dart';
import '../components/auth_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  ValueNotifier isVisibility = ValueNotifier(true);

  late RegisterCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = RegisterCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: cubit,
        child: BlocBuilder<RegisterCubit, RegisterState>(
          builder: (ctx, state) {
            if (state is RegisterLoading) {
              return view(isLoading: true);
            }
            if (state is RegisterInit) {
              return view();
            }
            if (state is RegisterError) {
              return view();
            }
            if (state is RegisterSuccess) {
              return view();
            }
            return Center(
              child: Text('Oops something is wrong'),
            );
          },
        ),
      ),
    );
  }

  view({bool isLoading = false}) {
    return Center(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: REdgeInsets.all(16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthHeader(
                    title: 'Create Account'.tr(),
                    subtitle:
                        'Enter your information to Sign up. This is required to verify your identity'
                            .tr(),
                  ),
                  32.verticalSpace,
                  DownToUp(
                    delayDurationInMilliseconds: 0.2,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          AppTextFormField(
                            controller: fullNameController,
                            hintText: 'Full name'.tr(),
                            validator: (value) {
                              if (value == null) {
                                return 'Please enter your name'.tr();
                              }
                              return null;
                            },
                          ),
                          16.verticalSpace,
                          AppTextFormField(
                            controller: dateOfBirthController,
                            hintText: 'Date of birth'.tr(),
                            readOnly: true,
                            suffixIcon: AppSvg.asset(AppIcon.calendar),
                          ),
                          16.verticalSpace,
                          AppTextFormField(
                            controller: phoneNumberController,
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
                            builder: (context, refresh, _) => AppTextFormField(
                              controller: passwordController,
                              hintText: 'Password'.tr(),
                              keyboardType: TextInputType.text,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  if (isVisibility.value != true) {
                                    isVisibility.value = true;
                                  } else {
                                    isVisibility.value = false;
                                  }
                                },
                                child: isVisibility.value
                                    ? Transform.scale(
                                        scale: 0.6,
                                        child: SvgPicture.asset(AppIcon.eye),
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: AppColor.gray,
                                      ),
                              ),
                              isVisible: isVisibility.value,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  32.verticalSpace,
                  DownToUp(
                    delayDurationInMilliseconds: 0.2,
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "By signing up, you agree to Joyme's ",
                            style: AppTextStyle.w500.copyWith(
                              fontSize: 16.sp,
                              color: AppColor.dark,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Service',
                            style: AppTextStyle.w500.copyWith(
                              fontSize: 16.sp,
                              color: AppColor.blue,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: AppTextStyle.w500.copyWith(
                              fontSize: 16.sp,
                              color: AppColor.dark,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: AppTextStyle.w500.copyWith(
                              fontSize: 16.sp,
                              color: AppColor.blue,
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
                      onPressed: register,
                      child: Text(
                        'signUp'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextStyle.w500.copyWith(
                          fontSize: 16.sp,
                          color: AppColor.dark,
                        ),
                      ),
                    ),
                  ),
                  24.verticalSpace,
                  DownToUp(
                    delayDurationInMilliseconds: 0.2,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Have an account? '.tr(),
                        style: AppTextStyle.w500.copyWith(
                          fontSize: 16.sp,
                          color: AppColor.dark,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'login'.tr(),
                            style: AppTextStyle.w500.copyWith(
                              fontSize: 16.sp,
                              color: AppColor.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.go('/SignInPage');
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
          isLoading?
              Center(
                child: CircularProgressIndicator(),
              ):SizedBox.shrink()
        ],
      ),
    );
  }

  register(){
    if (_formKey.currentState!.validate()) {
        String name = fullNameController.text.trim();
        String phoneNumber = phoneNumberController.text.formattedPhoneNumber.trim();
        String password = passwordController.text.trim();

        var newUser = UserModel(
            firstName: name,
            phone: phoneNumber,
            password: password);
        cubit.register(context, newUser);

    }
  }
}
