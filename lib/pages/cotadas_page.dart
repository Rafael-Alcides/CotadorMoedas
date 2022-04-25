import 'package:exemplo/widgets/page_container.dart';
import 'package:flutter/material.dart';

class CotadasPage extends StatelessWidget {
  const CotadasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
      subtitle: 'Selecione as moedas a serem cotadas em Dólar Americano',
      title: 'Cotação',
      child: SizedBox(),
    );
  }
}
