import 'package:exemplo/widgets/page_container.dart';
import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
      subtitle: 'Confira os valores de compra referentes ao Dólar Americano',
      title: 'Resultado',
      child: SizedBox(),
    );
  }
}
