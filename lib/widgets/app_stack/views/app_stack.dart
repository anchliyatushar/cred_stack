import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/logic/app_stack_cubit.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef IndexedWidgetBuilderCustom = AppStackModel Function(
    BuildContext context, int index);

class AppStack extends StatelessWidget {
  final IndexedWidgetBuilderCustom itemBuilder;
  final int itemLength;

  AppStack({
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
      if (i < currentPage) {
        widgetList.add(itemBuilder(context, i).collapsedChild);
      }

      if (i == currentPage) {
        widgetList.add(
          Entry.offset(
            yOffset: 1000,
            child: Container(
              child: itemBuilder(context, i).expandedChild,
              decoration: BoxDecoration(
                border: i == 0
                    ? null
                    : Border(
                        top: BorderSide(
                          color: AppColors.borderColor,
                        ),
                      ),
              ),
            ),
          ),
        );
      }
    }

    return widgetList;
  }
}
