import 'package:flutter/material.dart';
import 'package:giffy/screen/home/home.dart';
import 'package:giffy/themes/color.dart';

void main() => runApp(const GiffyApp());

class GiffyApp extends StatelessWidget {
  const GiffyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Giffy',
        home: const Home(),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: bgColorDark,
          inputDecorationTheme: const InputDecorationTheme(
              border: InputBorder.none,
              constraints: BoxConstraints(maxWidth: 300, maxHeight: 50),
              contentPadding: EdgeInsets.all(8)),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ));
  }
}
