import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget {
  final Color? backgroundColor;

  const AppLoadingIndicator({Key? key, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      backgroundColor: backgroundColor,
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
