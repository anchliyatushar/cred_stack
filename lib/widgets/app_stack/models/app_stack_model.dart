import 'package:flutter/material.dart';

class AppStackModel {
  final Widget expandedChild;
  final Widget collapsedChild;

  const AppStackModel({
    required this.expandedChild,
    required this.collapsedChild,
  });
}
