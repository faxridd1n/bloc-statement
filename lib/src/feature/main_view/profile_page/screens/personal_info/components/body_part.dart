part of '../personal_information_page.dart';

class _BodyPart extends StatelessWidget {
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final genderController = TextEditingController();

  _BodyPart();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextFormFild(
          hintText: 'Full name',
          controller: fullNameController,
        ),
        12.verticalSpace,
        MyTextFormFild(
          hintText: 'Phone number',
          controller: phoneNumberController,
        ),
        12.verticalSpace,
        MyTextFormFild(
          icon: AppIcon.calendar,
          hintText: 'Date of birth',
          controller: dateOfBirthController,
        ),
        12.verticalSpace,
        MyTextFormFild(
          hintText: 'Gender',
          icon: AppIcon.arrowDown,
          controller: genderController,
        ),
      ],
    );
  }
}
