import 'package:flutter/material.dart';

class OnboardInherit extends InheritedWidget {
  final PageController pageController;
  final ValueNotifier<int> currentIndex;

  const OnboardInherit({
    super.key,
    required super.child,
    required this.pageController,
    required this.currentIndex,
  });

  static OnboardInherit of(BuildContext context) {
    final OnboardInherit? result =
        context.dependOnInheritedWidgetOfExactType<OnboardInherit>();
    assert(result != null, 'No OnboardInherit found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(OnboardInherit old) {
    return false;
  }
}
