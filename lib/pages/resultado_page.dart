import 'package:exemplo/enums/moeda_enum.dart';
import 'package:exemplo/widgets/page_container.dart';
import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moedas = MoedasEnum.values.map((moeda) => moeda.name).toList();

    return PageContainer(
      subtitle: 'Confira os valores de compra referentes ao Dólar Americano',
      title: 'Resultado',
      child: ListView.builder(
          itemCount: moedas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(moedas[index]),
            );
          }),
    );
  }
}
