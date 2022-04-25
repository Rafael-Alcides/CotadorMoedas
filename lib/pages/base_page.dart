import 'package:exemplo/widgets/moeda_card.dart';
import 'package:exemplo/widgets/page_container.dart';
import 'package:flutter/material.dart';

import '../enums/moeda_enum.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      subtitle: 'Selecione a moeda base para as conversões',
      title: 'Moedas Base',
      child: ListView.builder(
          itemCount: MoedasEnum.values.length,
          itemBuilder: (context, index) {
            return MoedasCard(
              moeda: MoedasEnum.values[index],
              onClicked: () {},
            );
          }),
    );
  }
}
