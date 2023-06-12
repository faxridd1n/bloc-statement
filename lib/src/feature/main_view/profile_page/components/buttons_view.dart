part of '../profile_page.dart';

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final flag = AppLocaleConfig.currentLocale(context.locale).flag;
    return Column(
      children: [
        ProfilePageButton(
          icon: AppIcon.user,
          title: 'personalInformation'.tr(),
          onTap: () {
            context.push(
              '/PersonalInformationPage'
            );
          },
        ),
        12.verticalSpace,
        ProfilePageButton(
          icon: AppIcon.documents,
          title: 'documentsAndLicenses'.tr(),
          onTap: () {
            context.push('/DocumentsAndLicenses');
          },
        ),
        12.verticalSpace,
        ProfilePageButton(
          icon: AppIcon.car,
          title: 'My cars'.tr(),
          onTap: () {
            context.push('/MyCarsPage');
          },
        ),
        12.verticalSpace,
        ProfilePageButton(
          title: 'language'.tr(),
          icon: AppIcon.language,
          trailing: Image.asset(
            flag,
            height: 24.r,
            width: 24.r,
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              useRootNavigator: true,
              isScrollControlled: false,
              useSafeArea: true,
              backgroundColor: Colors.transparent,
              builder: (context) => LanguageBottomSheet(
                  title: 'language'.tr(),
                LanguageButton: const LanguageButtons(),

              ),
            );
          },
        ),
        12.verticalSpace,
        ProfilePageButton(
          icon: AppIcon.call,
          title: 'contactUs'.tr(),
          onTap: () {},
        ),
        12.verticalSpace,
        ProfilePageButton(
          title: 'logout'.tr(),
          icon: AppIcon.logout,
          titleColor: AppColor.red,
          onTap: () {
            showModalBottomSheet(
              context: context,
              useRootNavigator: true,
              isScrollControlled: false,
              useSafeArea: true,
              backgroundColor: Colors.transparent,
              builder: (context) => LanguageBottomSheet(
                  title: 'logout'.tr(),
                  LogoutButton: Column(
                    children: [
                      12.verticalSpace,
                      Text(
                        'Are you sure you want to logout?'.tr(),
                        style: AppTextStyle.w500.copyWith(
                          fontSize: 16.sp,
                          color: AppColor.gray,
                        ),
                      ),
                      32.verticalSpace,
                      PrimaryButton.custom(
                        background: AppColor.red,
                        foreground: AppColor.white,
                        onPressed: (){},
                        child: Text(
                          'Yes, Logout'.tr(),
                          style: AppTextStyle.w500.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      12.verticalSpace,
                      PrimaryButton.transparent(
                        borderColor: AppColor.gray,
                        onPressed: (){},
                        child: Text(
                          'No, Cancel'.tr(),
                          style: AppTextStyle.w500.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            );
          },
        ),
        12.verticalSpace,
      ],
    );
  }
}
