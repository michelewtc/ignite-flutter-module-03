import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get background;
  Gradient get backgroundIconRevenue;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get background => LinearGradient(colors: [
        Color(0xFF40B38C),
        Color(0xFF45CC93),
      ], transform: GradientRotation(2.35619 * pi));

  @override
  Gradient get backgroundIconRevenue => LinearGradient(colors: [
        Color(0xFF40B28C),
        Color(0xFF45CC93),
      ], transform: GradientRotation(7734.93 * (pi / 180)));
}
