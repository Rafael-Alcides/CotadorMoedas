import 'package:exemplo/widgets/page_container.dart';
import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
      subtitle: 'Selecione a moeda base para as conversões',
      title: 'Moedas Base',
      child: SizedBox(),
    );
  }
}
