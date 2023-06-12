import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:u_rent_demo/src/feature/auth_feature/components/auth_header.dart';
import 'package:u_rent_demo/src/feature/main_view/search_page/search_page.dart';
import '../../feature/auth_feature/screens/sign_in_page.dart';
import '../../feature/auth_feature/screens/sign_up_page.dart';
import 'package:u_rent_demo/src/feature/main_view/profile_page/profile_page.dart';
import 'package:u_rent_demo/src/feature/my_cars/my_cars_page.dart';
import '../../feature/entry_feature/screens/language_preference_page.dart';
import '../../feature/entry_feature/screens/onboard_page.dart';
import '../../feature/entry_feature/screens/splash_page.dart';
import '../../feature/main_view/home_page/booking _time_page/booking_time_page.dart';
import '../../feature/main_view/home_page/car_data_page/car_data_page.dart';
import '../../feature/main_view/home_page/notification_page/notification_page.dart';
import '../../feature/main_view/error_page/error_page.dart';
import '../../feature/main_view/error_page/test_page.dart';
import '../../feature/main_view/main_view.dart';
import '../../feature/main_view/orders_page/orders_page.dart';
import '../../feature/main_view/profile_page/screens/document_and_licenses/documents_page.dart';
import '../../feature/main_view/profile_page/screens/personal_info/personal_information_page.dart';
import '../../feature/main_view/posting_add_page/posting_add_page.dart';
import '../../feature/main_view/posting_add_page/screens/add_vehicle_documents/add_vehicle_documents.dart';
import '../../feature/main_view/posting_add_page/screens/add_vehicle_features/add_vehicle_features.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

final router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  SplashPage(),
    ),
    GoRoute(
      path: '/LanguagePreferencePage',
      builder: (BuildContext context, GoRouterState state) =>
          const LanguagePreferencePage(),
    ),
    GoRoute(
      path: '/MainPage',
      builder: (BuildContext context, GoRouterState state) => const MainPage(),
    ),
    //nb=
    GoRoute(
      path: '/OnboardPage',
      builder: (BuildContext context, GoRouterState state) =>
          const OnboardPage(),
    ),
    GoRoute(
      path: '/SearchPage',
      builder: (BuildContext context, GoRouterState state) =>
          const SearchPage(),
    ),

    GoRoute(
      path: '/PostingAddPage',
      builder: (BuildContext context, GoRouterState state) =>
          const PostingAddPage(),
    ),
    GoRoute(
      path: '/AddVehicleFeaturesPage',
      builder: (BuildContext context, GoRouterState state) =>
          const AddVehicleFeaturesPage(),
    ),
    GoRoute(
      path: '/AddVehicleDocumentsPage',
      builder: (BuildContext context, GoRouterState state) =>
          const AddVehicleDocumentsPage(),
    ),
    GoRoute(
      path: '/AddVehicleDocumentsPage',
      builder: (BuildContext context, GoRouterState state) =>
      ErrorPage(''),
    ),
    GoRoute(
      path: '/AddVehicleDocumentsPage',
      builder: (BuildContext context, GoRouterState state) =>
          TestPage(),
    ),
    GoRoute(
      path: '/SignInPage',
      builder: (BuildContext context, GoRouterState state) =>
          const SignInPage(),
    ),
    GoRoute(
      path: '/SignUpPage',
      builder: (BuildContext context, GoRouterState state) => SignUpPage(),
    ),
    GoRoute(
      path: '/ProfilePage',
      builder: (BuildContext context, GoRouterState state) =>
          const ProfilePage(),
    ),
    GoRoute(
      path: '/PersonalInformationPage',
      builder: (BuildContext context, GoRouterState state) =>
          const PersonalInformationPage(),
    ),
    GoRoute(
      path: '/DocumentAndLicensesPage',
      builder: (BuildContext context, GoRouterState state) =>
          const DocumentAndLicensesPage(),
    ),
    GoRoute(
      path: '/OrdersPage',
      builder: (BuildContext context, GoRouterState state) =>
          const OrdersPage(),
    ),
    GoRoute(
      path: '/MyCarsPage',
      builder: (BuildContext context, GoRouterState state) =>
          const MyCarsPage(),
    ),
    GoRoute(
      path: '/CarDataPage',
      builder: (BuildContext context, GoRouterState state) =>
      const CarDataPage(),
    ),
    GoRoute(
      path: '/BookingTimePage',
      builder: (BuildContext context, GoRouterState state) =>
      const BookingTimePage(),
    ),
    GoRoute(
      path: '/NotificationPage',
      builder: (BuildContext context, GoRouterState state) =>
      const NotificationPage(),
    ),
  ],
);
