 part of '../documents_page.dart';

class DocumentListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;
  final Widget? bottom;

  const DocumentListTile({
    required this.title,
    required this.subtitle,
    this.trailing,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: const [
          BoxShadow(
            blurRadius: 16,
            offset: Offset(0, 4),
            color: Color(0x0D000000),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.w500.copyWith(
                        fontSize: 16.sp,
                        color: AppColor.dark,
                      ),
                    ),
                    6.verticalSpace,
                    Text(
                      subtitle,
                      style: AppTextStyle.w400.copyWith(
                        fontSize: 12.sp,
                        color: AppColor.gray,
                      ),
                    ),
                  ],
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          if (bottom != null) bottom!,
        ],
      ),
    );
  }
}
