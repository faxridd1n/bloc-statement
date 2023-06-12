import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/partOfPage/searchFilter.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/partOfPage/searchedCars.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/partOfPage/SearchSuccess.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/components/partOfPage/searchnotExist.dart';

import 'components/widgets/appbar.dart';
bool isExist = false;
  bool isWriting = false;
  bool automatic = false;
  bool mechanic = false;
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

//nb=
class _SearchPageState extends State<SearchPage> {
  TextEditingController searchCarCtr = TextEditingController();
  
  void dispose() {
    super.dispose();
    searchCarCtr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: KeyboardDismisser(
        child: Scaffold(
          backgroundColor: AppColor.white,
          appBar: AppBar(
            leadingWidth: 0,
            toolbarHeight: 64.h,
            elevation: 0,
            backgroundColor: AppColor.white,
            shadowColor: AppColor.black,
            title: AppBarWidget(
              isWriting,
              searchCarCtr,
              () {
                setState(() {});
              },
              automatic,
              mechanic,
            ),
          ),
          body: searchCarCtr.text.isEmpty
              ? SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SearchFilter(
                        () {
                          setState(() {});
                        },
                        isExist,
                        searchCarCtr,
                        automatic,
                        mechanic,
                      ),
                      SearchedCars(),
                    ],
                  ),
                )
              : isExist
                  ? SearchSuccess()
                  : Searchnone(searchCarCtr)
        ),
      ),
    );
  }
}
