import 'package:flutter/material.dart';
// import 'package:portafolio/styles/app_size.dart';
import 'package:portafolio/utils/divice_type.dart';
import 'package:portafolio/widgets/app_logo.dart';
import 'package:portafolio/widgets/app_menu.dart';
import 'package:portafolio/widgets/lenguage_selector.dart';
import 'package:portafolio/widgets/theme_selector.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: context.insets.padding,
        vertical: context.insets.padding / 2,
      ),
      child: Row(
        children: const [
          AppLogo(),
          Spacer(),
          AppMenu(),
          Spacer(),
          LenguageSelector(),
          ThemeSelector(),
        ],
      ),
    );
  }
}
