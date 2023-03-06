import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  const AppTitleText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
    );
  }
}

class AppText extends StatelessWidget {
  const AppText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
    );
  }
}

class AppSubtitleText extends StatelessWidget {
  const AppSubtitleText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 12),
    );
  }
}
