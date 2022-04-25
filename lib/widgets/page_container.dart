import 'package:exemplo/theme/colors.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final List<Widget> actions;
  final Widget child;
  final String title;
  final String subtitle;

  const PageContainer({
    Key? key,
    this.actions = const [],
    required this.child,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 15,
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.text1,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(child: child),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: actions,
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
