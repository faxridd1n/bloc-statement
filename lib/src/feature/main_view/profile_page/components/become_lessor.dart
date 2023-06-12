part of '../profile_page.dart';

class _BecomeLessorView extends StatelessWidget {
  const _BecomeLessorView();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.r,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(
          DesignConstants.borderRadius,
        ),
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return const PostingAddPage();
            },),);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            8.horizontalSpace,
            Container(
              height: 72.r,
              width: 68.r,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppIcon.lessor),
                ),
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Become Lessor',
                    style: AppTextStyle.w600.copyWith(
                      fontSize: 20.sp,
                      color: AppColor.dark,
                    ),
                  ),
                  6.verticalSpace,
                  Text(
                    'Do you want to rent your car as an individual or a legal entity?',
                    style: AppTextStyle.w400.copyWith(
                      fontSize: 14.sp,
                      color: AppColor.dark,
                    ),
                  ),
                ],
              ),
            ),
            12.horizontalSpace,
            Container(
              height: 88.r,
              width: 51.r,
              alignment: Alignment.center,
              padding: REdgeInsets.only(
                left: 14.r,
                right: 4.r,
              ),
              decoration: const BoxDecoration(
                color: AppColor.dark,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(100),
                  right: Radius.circular(
                    DesignConstants.borderRadius,
                  ),
                ),
              ),
                child: Icon(
                  Icons.arrow_forward,
                  size: 24.r,
                  color: AppColor.white,
                ),

            )
          ],
        ),
      ),
    );
  }
}
