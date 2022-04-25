import 'package:exemplo/enums/moeda_enum.dart';
import 'package:exemplo/theme/colors.dart';
import 'package:flutter/material.dart';

class MoedasCard extends StatelessWidget {
  final MoedasEnum moeda;
  final bool selected;
  final VoidCallback onClicked;

  const MoedasCard({
    Key? key,
    required this.moeda,
    this.selected = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onClicked,
        child: Container(
          height: 74,
          padding: const EdgeInsets.symmetric(horizontal: 23),
          decoration: BoxDecoration(
              color: AppColors.itemBg,
              border: selected
                  ? Border.all(
                      width: 3,
                      color: AppColors.primary,
                    )
                  : null,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Row(
            children: [
              const Icon(
                Icons.attach_money,
                color: AppColors.text2,
                size: 30,
              ),
              const SizedBox(
                width: 23,
              ),
              Text(
                moeda.name,
                style: const TextStyle(
                    color: AppColors.text2,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
