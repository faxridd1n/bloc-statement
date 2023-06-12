import 'package:flutter/material.dart';

class ThemeClass{

  // Color lightPrimaryColor =

  static ThemeData lightTheme = ThemeData(
     primaryColor: ThemeData.light().scaffoldBackgroundColor,
       brightness: Brightness.light,
    //   appBarTheme: const AppBarTheme(
    //       backgroundColor:AppColor.white ,
    //       foregroundColor:AppColor.c031633
    //   ),
    //
    // colorScheme: const ColorScheme.light().copyWith(
    //   primary: AppColor.c031633,
    // )
  );

  static ThemeData darkTheme = ThemeData(
       primaryColor: ThemeData.dark().scaffoldBackgroundColor,
      // primarySwatch: Colors.grey,
       brightness: Brightness.light,
      // dividerColor: AppColor.c031633,
      // appBarTheme: const AppBarTheme(
      //   backgroundColor: AppColor.c031633,
      //   foregroundColor:AppColor.white,
      // ),
      // colorScheme: const ColorScheme.dark().copyWith(
      //   primary: AppColor.white,
      // )
  );


}