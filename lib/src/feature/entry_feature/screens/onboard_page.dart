import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/onbard_page_view.dart';
import '../components/onboard_inherit.dart';
import '../components/onboard_page_indicator.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final _pageController = PageController();
  final _currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardInherit(
        pageController: _pageController,
        currentIndex: _currentIndex,
        child: Stack(
          children: const [
            OnboardPageView(),
            OnboardIndicator(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentIndex.dispose();
    super.dispose();
  }
}
