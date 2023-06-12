import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';

import 'onboard_inherit.dart';


class OnboardIndicator extends StatelessWidget {
  const OnboardIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = OnboardInherit.of(context).currentIndex;
    final topPadding = MediaQuery.of(context).padding.top + 16.r;
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Padding(
              padding: i == 1
                  ? EdgeInsets.zero
                  : REdgeInsets.symmetric(horizontal: 8),
              child: ValueListenableBuilder(
                valueListenable: currentIndex,
                builder: (context, index, _) {
                  return AnimatedContainer(
                    height: 4.r,
                    width: (1.sw - 48.r) / 3,
                    duration: const Duration(milliseconds: 250),
                    decoration: BoxDecoration(
                      color: index == i ? AppColor.white : AppColor.c677294,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  );
                },
              ),
            )
        ],
      ),
    );
  }
}
