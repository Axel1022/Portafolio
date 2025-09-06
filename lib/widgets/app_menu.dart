import 'package:flutter/material.dart';
import 'package:portafolio/utils/localization.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(context.loc.home),
        Text(context.loc.sobre_mi),
        Text(context.loc.educacion),
        Text(context.loc.experiencia),
        Text(context.loc.contacto),
      ],
    );
  }
}
