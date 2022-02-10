import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giffy/bloc/keywoard/bloc/keywoard_bloc.dart';
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
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderHome(),
              const SizedBox(height: 30),
              FormKeyword(),
              const SizedBox(height: 30),
              const TextLastSearch(),
              const SizedBox(height: 30),

              //Container(height: 600, color: Colors.red)
              const ListOfGifs()
            ],
          ),
        ),
      ),
    );
  }
}

class TextLastSearch extends StatelessWidget {
  const TextLastSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeywoardBloc, KeywoardState>(
      builder: (context, state) {
        var lastSearch = state.keywoard ?? '';
        return Text("Ultima Busqueda $lastSearch");
      },
    );
  }
}

class FormKeyword extends StatelessWidget {
  FormKeyword({
    Key? key,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Form(
          key: _formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const InputKeyword(),
              SubmitButton(formKey: _formKey),
            ],
          )),
    );
  }
}
