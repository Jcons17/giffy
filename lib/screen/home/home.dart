import 'package:flutter/material.dart';
import 'package:giffy/screen/home/header_home.dart';
import 'package:giffy/widgets/text/text_body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderHome(),
        ],
      ),
    );
  }
}
