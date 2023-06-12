import 'package:flutter/material.dart';
import '../../../../../design_system/design_system.dart';

class HeadCarData extends StatelessWidget {
  HeadCarData({
    super.key,
    required this.carImageLists,
  });

  final List<String> carImageLists;
  final currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (index) {
              currentIndex.value = index;
            },
            controller: PageController(),
            itemCount: carImageLists.length,
            itemBuilder: (BuildContext context, int index){
              return _Image(image: carImageLists[index]);
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.h,
              bottom: 16.h,
              right: 16.w,
            ),
            child: ValueListenableBuilder(
              valueListenable: currentIndex,
              builder: (context, count, _){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _Count(
                      selectedIndex: currentIndex.value,
                      length: carImageLists.length,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(carImageLists.length, (index) => _Indicator(
                          isActive: currentIndex.value == index ? true : false,
                        ),),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 11.r : 4.r,
      height: 4.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: isActive ? AppColor.white : AppColor.dark,
      ),
    );
  }
}

class _Count extends StatelessWidget {
  const _Count({
    required this.selectedIndex,
    required this.length,
  });

  final int selectedIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    print(length);
    return Container(
      height: 28.h,
      width: 44.w,
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        color: AppColor.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Center(
        child: Text(
          '${selectedIndex+1}/$length',
          style: AppTextStyle.w500.copyWith(
            fontSize: 14.sp,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
