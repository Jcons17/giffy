import 'dart:html';

import 'package:flutter/material.dart';
import 'package:giffy/screen/home/header_home.dart';
import 'package:giffy/screen/home/list_of_gifs.dart';
import 'package:giffy/widgets/input/input_file.dart';
import 'package:giffy/widgets/input/submit_keyword.dart';
import 'package:giffy/widgets/text/text_body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            HeaderHome(),
            SizedBox(height: 30),
            FormKeyword(),
            SizedBox(height: 30),
            ListOfGifs()
          ],
        ),
      ),
    );
  }
}

class FormKeyword extends StatelessWidget {
  const FormKeyword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Form(
          child: ClipRect(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            InputKeyword(),
            SubmitButton(),
          ],
        ),
      )),
    );
  }
}
