import 'dart:async';

import 'package:flutter/material.dart';
import 'package:giffy/services/http_gifs.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool isHover = false;
  bool isPress = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => handlePress(),
      onHover: (hover) {
        setState(() {
          isHover = hover;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(8),
        color: !isHover
            ? Colors.deepPurple
            : isPress
                ? Colors.deepPurple.shade100
                : Colors.deepPurple.shade800,
        height: 50,
        child: const Center(child: Text("Buscar...")),
      ),
    );
  }

  handlePress() async {
    final gifs = await HttpGifs.fetchGifs("morty");
  }
}
