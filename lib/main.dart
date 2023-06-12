import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:u_rent_demo/src/design_system/route/app_router.dart';
import 'package:u_rent_demo/src/design_system/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  hiveRegisters();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) => EasyLocalization(
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ru', 'RU'),
            Locale('uz', 'UZ'),
          ],
          path: 'assets/translations',
          fallbackLocale: const Locale('uz', 'UZ'),

          child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          SystemChrome.setSystemUIOverlayStyle(
            const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Colors.white,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
          );

          return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.system,
              darkTheme: ThemeClass.darkTheme,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routeInformationProvider: router.routeInformationProvider,
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate,
              theme: ThemeClass.lightTheme);
        });
  }
}


void hiveRegisters() {
  // Hive.registerAdapter(UserModelAdapter());
}