import 'package:flutter/material.dart';



heightSpace(double height) => SizedBox(height: height);
widthSpace(double width) => SizedBox(width: width);


extension BuildContextMediaQuery on BuildContext {
  ///
  /// [context] - BuildContext
  ///
  /// [fraction] - double between 0.0 and 1.0
  double widthPercent(double fraction) =>
      MediaQuery.of(this).size.width * fraction;

  ///
  /// [context] - BuildContext
  ///
  /// [fraction] - double between 0.0 and 1.0
  double heightPercent(double fraction) =>
      MediaQuery.of(this).size.height * fraction;
}