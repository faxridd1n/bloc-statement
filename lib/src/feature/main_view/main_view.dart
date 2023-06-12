import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/feature/main_view/profile_page/profile_page.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/search_page.dart';
import 'favorites_page/favorites_page.dart';
import 'home_page/home_page.dart';
import 'orders_page/orders_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
//nb=
class _MainPageState extends State<MainPage> {

  final selectedIndex = ValueNotifier<int>(0);
  var pages = [
    const HomePage(),
    const SearchPage(),
    const OrdersPage(),
     FavoritesPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ValueListenableBuilder(
        builder: (context,count,_) {
          return pages[selectedIndex.value];
        }, valueListenable: selectedIndex,
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context,count,_) {
          return BottomNavigationBar(
            currentIndex: selectedIndex.value,
            onTap: (index) {
              selectedIndex.value = index;
            },
            elevation: 0,
            enableFeedback: true,
            selectedFontSize: 12.sp,
            unselectedFontSize: 10.sp,
            backgroundColor: AppColor.white,
            unselectedItemColor: AppColor.c677294,
            selectedItemColor: AppColor.primary,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                backgroundColor: AppColor.white,
                icon: AppSvg.asset(AppIcon.home, color: AppColor.c677294),
                activeIcon: AppSvg.asset(AppIcon.home, color: AppColor.primary),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                backgroundColor: AppColor.white,
                icon: AppSvg.asset(AppIcon.search, color: AppColor.c677294),
                activeIcon: AppSvg.asset(AppIcon.search, color: AppColor.primary),
              ),
              BottomNavigationBarItem(
                label: 'Orders',
                backgroundColor: AppColor.white,
                icon: AppSvg.asset(AppIcon.orders, color: AppColor.c677294),
                activeIcon: AppSvg.asset(AppIcon.orders, color: AppColor.primary),
              ),
              BottomNavigationBarItem(
                label: 'Favorites',
                backgroundColor: AppColor.white,
                icon: AppSvg.asset(AppIcon.favorites, color: AppColor.c677294),
                activeIcon: AppSvg.asset(AppIcon.favorites, color: AppColor.primary),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                backgroundColor: AppColor.white,
                icon: AppSvg.asset(AppIcon.profile, color: AppColor.c677294),
                activeIcon: AppSvg.asset(AppIcon.profile, color: AppColor.primary),
              ),
            ],
          );
        }
      ),
    );

  }
}
