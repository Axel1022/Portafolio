import 'package:flutter/material.dart';
import 'package:portafolio/utils/divice_type.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Portafolio", style: context.textStyle.titleLgBold);
  }
}
