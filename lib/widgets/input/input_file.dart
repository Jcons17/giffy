import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giffy/bloc/keywoard/bloc/keywoard_bloc.dart';
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
          onSaved: (value) {
            BlocProvider.of<KeywoardBloc>(context, listen: false)
                .add(ChangeKeywoardEvent(newKeywoard: value!));
          },
          onFieldSubmitted: (value) {
            BlocProvider.of<KeywoardBloc>(context, listen: false)
                .add(ChangeKeywoardEvent(newKeywoard: value));
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ));
  }
}
