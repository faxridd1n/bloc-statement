import 'package:flutter/cupertino.dart';
import '../../../../design_system/design_system.dart';

class ReturnHomeView extends StatelessWidget {
  const ReturnHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Return to Home",
        style: AppTextStyle.w500.copyWith(
          fontSize: 16,
          color: AppColor.dark,
        ),
      ),
    );
  }
}
