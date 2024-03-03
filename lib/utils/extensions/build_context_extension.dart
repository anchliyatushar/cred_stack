import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  double get availableHeight =>
      MediaQuery.sizeOf(this).height -
      kToolbarHeight -
      MediaQuery.paddingOf(this).top -
      MediaQuery.paddingOf(this).bottom;
}
