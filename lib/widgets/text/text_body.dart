import 'package:flutter/material.dart';

enum TextSize { small, medium, large }

class TextBody extends StatelessWidget {
  const TextBody(this.text, {Key? key, this.size = TextSize.medium})
      : super(key: key);
  final String text;
  final TextSize size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: selectStyle(context),
    );
  }

  TextStyle selectStyle(context) {
    switch (size) {
      case TextSize.small:
        return Theme.of(context).textTheme.bodySmall!;
      case TextSize.medium:
        return Theme.of(context).textTheme.bodyMedium!;
      case TextSize.large:
        return Theme.of(context).textTheme.bodyLarge!;
    }
  }
}
