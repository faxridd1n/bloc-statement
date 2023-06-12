import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'components/error_view.dart';
import 'components/return_home_view.dart';

class ErrorPage extends StatefulWidget {
  ErrorPage(this.errorTypeTitle,{Key? key}) : super(key: key);
  String errorTypeTitle;



  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          children: [
            ErrorView(
              title: widget.errorTypeTitle == 'Page Not Found'
                  ? 'Page Not Found'
                  : widget.errorTypeTitle == 'Connection Lost'
                      ? 'Connection Lost'
                      : widget.errorTypeTitle == 'Internal Server Error'
                          ? 'Internal Server Error'
                          : '',
              text: widget.errorTypeTitle == "Page Not Found"
                  ? "The page you are looking for doesn't exist"
                  : widget.errorTypeTitle == 'Connection Lost'
                  ? 'No internet connection, check the connection to your network'
                  : widget.errorTypeTitle == 'Internal Server Error'
                  ? 'U-rent is currently unable to handle this request. HTTP ERROR 500'
                  : '',
              icon: widget.errorTypeTitle == "Page Not Found"
                  ? '${AppIcon.errorTV}'
                  : widget.errorTypeTitle == 'Connection Lost'
                  ? '${AppIcon.errorLampRobot}'
                  : widget.errorTypeTitle == 'Internal Server Error'
                  ? '${AppIcon.errorServer}'
                  : '',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 75, right: 75, bottom: 33),
              child: PrimaryButton(
                onPressed: () {},
                child: (Text(
                  "Try again",
                  style: AppTextStyle.w500.copyWith(
                    fontSize: 16,
                    color: AppColor.dark,
                  ),
                )),
              ),
            ),
            ReturnHomeView(),
          ],
        ));
  }
}
