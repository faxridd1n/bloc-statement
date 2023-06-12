import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AnimationTypeDownToUp { opacity, translateY }

class DownToUp extends StatelessWidget {
  final double delayDurationInMilliseconds;
  final Widget child;
  final bool withPosition;
  final bool reversePosition;
  final Function()? onFinish;

  const DownToUp({
    super.key,
    required this.delayDurationInMilliseconds,
    required this.child,
    this.withPosition = true,
    this.reversePosition = false,
    this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        AnimationTypeDownToUp.opacity,
        Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 800),
      )
      ..tween(
        AnimationTypeDownToUp.translateY,
        Tween(begin: reversePosition ? -100.0 : 100.0, end: 0.0),
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeOutExpo,
      );
    return PlayAnimationBuilder<Movie>(
      tween: tween,
      onCompleted: onFinish,
      duration: tween.duration,
      delay: Duration(
        milliseconds: (500 * delayDurationInMilliseconds).round(),
      ),
      builder: (context, value, _) {
        return Opacity(
          opacity: value.get(AnimationTypeDownToUp.opacity),
          child: withPosition
              ? Transform.translate(
                  offset: Offset(0, value.get(AnimationTypeDownToUp.translateY)),
                  child: child,
                )
              : child,
        );
      },
      child: child,
    );
  }
}
