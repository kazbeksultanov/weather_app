import 'package:flutter/material.dart';

class AppClose1Icon extends StatelessWidget {
  final double size;
  final Color? color;

  const AppClose1Icon({Key? key, this.size = 24, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Icon(
        Icons.close,
        color: color ?? IconTheme.of(context).color,
      ),
    );
  }
}

class AppMoonIcon extends StatelessWidget {
  final double size;
  final Color? color;

  const AppMoonIcon({Key? key, this.size = 24, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Icon(
        Icons.nights_stay_rounded,
        color: color ?? IconTheme.of(context).color,
      ),
    );
  }
}

class AppSunIcon extends StatelessWidget {
  final double size;
  final Color? color;

  const AppSunIcon({Key? key, this.size = 24, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Icon(
        Icons.sunny,
        color: color ?? IconTheme.of(context).color,
      ),
    );
  }
}

class AppMenuIcon extends StatelessWidget {
  final double size;
  final Color? color;

  const AppMenuIcon({Key? key, this.size = 24, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Icon(
        Icons.menu,
        color: color ?? IconTheme.of(context).color,
      ),
    );
  }
}
