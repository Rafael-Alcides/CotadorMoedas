import 'package:exemplo/nagigator/navigator.dart';
import 'package:exemplo/pages/base_page.dart';
import 'package:exemplo/pages/cotadas_page.dart';
import 'package:exemplo/pages/resultado_page.dart';
import 'package:exemplo/theme/colors.dart';
import 'package:exemplo/widgets/page_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CotacaoApp());
}

class CotacaoApp extends StatefulWidget {
  const CotacaoApp({Key? key}) : super(key: key);

  @override
  State<CotacaoApp> createState() => _CotacaoAppState();
}

class _CotacaoAppState extends State<CotacaoApp> {
  final pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(163, 43),
            elevation: 0,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text1,
              letterSpacing: 0.75,
            ),
          ),
        ),
      ),
      home: CotacaoNavigator(
        pageController: pageController,
        pages: const [
          BasePage(),
          CotadasPage(),
          ResultadoPage(),
        ],
      ),
    );
  }
}
