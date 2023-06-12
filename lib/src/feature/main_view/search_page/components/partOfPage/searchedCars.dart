import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/widgets/searched_cars_widget.dart';

class SearchedCars extends StatelessWidget {
  SearchedCars({super.key});
//nb=
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recently search',
                style: AppTextStyle.w500.copyWith(
                  color: AppColor.dark,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                },
                child: Text(
                  'Clear search',
                  style: AppTextStyle.w400.copyWith(
                    color: AppColor.c677294,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 41.h * 6 + 16.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return SearchedCarsWidget(
                'GLA 250 SUV 2022'
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
