import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset("assets/logo.png"),
    );
  }
}
