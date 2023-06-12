import 'package:flutter/material.dart';

class CustomScrollPhysics extends ScrollPhysics {
  final double width;
  final double separatorWidth;

  const CustomScrollPhysics({
    super.parent,
    required this.width,
    this.separatorWidth = 0,
  }) : assert(width > 0);

  @override
  bool get allowImplicitScrolling => false;

  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics(
      parent: buildParent(ancestor),
      width: width,
      separatorWidth: separatorWidth,
    );
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    final Tolerance tolerance = this.tolerance;
    final double target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }

  double _getTargetPixels(
    ScrollMetrics position,
    Tolerance tolerance,
    double velocity,
  ) {
    double page = position.pixels / (width + separatorWidth);
    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }
    final result = page.roundToDouble() * (width + separatorWidth);
    return result;
  }
}
