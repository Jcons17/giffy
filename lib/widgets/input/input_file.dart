import 'package:flutter/material.dart';
import 'package:giffy/themes/color.dart';

class InputKeyword extends StatelessWidget {
  const InputKeyword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(color: Colors.white70),
        child: TextFormField(
          cursorColor: bgColorDark,
          autocorrect: false,
        ));
  }
}
