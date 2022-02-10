import 'package:flutter/material.dart';

class Gif extends StatelessWidget {
  const Gif({Key? key, required this.url, required this.title})
      : super(key: key);

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(height: 200, width: 200, child: Image.network(url));
  }
}
