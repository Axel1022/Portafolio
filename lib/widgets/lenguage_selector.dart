import 'package:flutter/material.dart';

class LenguageSelector extends StatelessWidget {
  const LenguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem(value: "es", child: Text("Español")),
          const PopupMenuItem(value: "en", child: Text("Inglés")),
        ];
      },
    );
  }
}
