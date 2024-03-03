import 'package:cred_assignment/data/data.dart';
import 'package:flutter/material.dart';

class AppStackChildView extends StatelessWidget {
  final Widget expandedChild;
  final Widget collapsedChild;
  final AppStackChildViewState state;

  const AppStackChildView({
    super.key,
    required this.expandedChild,
    required this.collapsedChild,
    this.state = AppStackChildViewState.NONE,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: AppDurations.animDuration,
      child: state.isExpanded ? expandedChild : collapsedChild,
    );
  }
}
