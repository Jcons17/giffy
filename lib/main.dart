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
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ));
  }
}
