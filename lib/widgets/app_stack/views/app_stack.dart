import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/logic/app_stack_cubit.dart';
import 'package:cred_assignment/utils/utils.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef IndexedWidgetBuilderCustom = AppStackModel Function(
    BuildContext context, int index);

class AppStack extends StatelessWidget {
  final IndexedWidgetBuilderCustom itemBuilder;
  final int itemLength;

  const AppStack({
    super.key,
    required this.itemBuilder,
    required this.itemLength,
  }) : assert(itemLength > 0);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppStackCubit(),
      child: _AppStackView(
        itemLength: itemLength,
        itemBuilder: itemBuilder,
      ),
    );
  }
}

class _AppStackView extends StatelessWidget {
  final int itemLength;
  final IndexedWidgetBuilderCustom itemBuilder;

  const _AppStackView({
    required this.itemLength,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppStackCubit, int>(
      builder: (context, currentPage) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (didPop) {
              return;
            }

            if (currentPage == 0) {
              Navigator.pop(context);
            }

            context.read<AppStackCubit>().previousPage();
          },
          child: Stack(
            children: _renderChildren(
              context: context,
              currentPage: currentPage,
            ),
          ),
        );
      },
    );
  }

  List<Widget> _renderChildren({
    required int currentPage,
    required BuildContext context,
  }) {
    final widgetList = <Widget>[];
    for (var i = 0; i < itemLength; i++) {
      widgetList.add(
        AnimatedPositioned(
          duration: AppDurations.animDuration,
          top: i == 0 ? 0 : (80.0 * i),
          left: i == currentPage ? 0 : (currentPage - i) * 40,
          width: MediaQuery.sizeOf(context).width,
          height: context.availableHeight,
          child: GestureDetector(
            onTap: i < currentPage
                ? () => context.read<AppStackCubit>().setPage(i)
                : null,
            child: Visibility(
              visible: i <= currentPage,
              child: AnimatedContainer(
                duration: AppDurations.animDuration,
                padding: i < currentPage
                    ? const EdgeInsets.symmetric(horizontal: 24, vertical: 16)
                    : null,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  border: i < currentPage
                      ? const Border(
                          top: BorderSide(color: AppColors.borderColor),
                          left: BorderSide(color: AppColors.borderColor),
                        )
                      : i == 0
                          ? null
                          : const Border(
                              top: BorderSide(color: AppColors.borderColor)),
                ),
                child: AnimatedSwitcher(
                  duration: AppDurations.animDuration,
                  child: i == currentPage
                      ? itemBuilder(context, i).expandedChild
                      : i < currentPage
                          ? itemBuilder(context, i).collapsedChild
                          : const SizedBox(),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return widgetList;
  }
}
