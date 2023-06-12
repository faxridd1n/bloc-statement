import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../design_system/assets/app_icons.dart';
import 'error_page.dart';

class TestPage extends StatefulWidget {       //  Vohtinchali page, backend qilingan payt tog'irlanadi
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  ErrorPage("Page Not Found")
    );
  }
}
