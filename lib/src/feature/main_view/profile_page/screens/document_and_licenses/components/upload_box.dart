part of '../documents_page.dart';

class UploadBox extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onPressed;

  const UploadBox({
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 96.r,
          alignment: Alignment.center,
          padding: REdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.cE2E2E2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSvg.asset(icon),
              12.verticalSpace,
              Text(
                title,
                style: AppTextStyle.w400.copyWith(
                  fontSize: 12.sp,
                  color: AppColor.gray,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
