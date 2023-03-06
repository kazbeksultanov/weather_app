import 'package:drivers/models/app_error.dart';
import 'package:flutter/material.dart';
import 'package:localization/strings.dart';

class AppLoadingError extends StatefulWidget {
  final AppError error;
  final void Function() onRetry;

  const AppLoadingError(
    this.error, {
    required this.onRetry,
    Key? key,
  }) : super(key: key);

  @override
  _AppLoadingErrorState createState() => _AppLoadingErrorState();
}

class _AppLoadingErrorState extends State<AppLoadingError> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 38,
              child: Center(
                child: Text(AppStrings.of(context).error),
              ),
            ),
            const SizedBox(height: 8),
            Text(widget.error.toString(), textAlign: TextAlign.center),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 72),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: widget.onRetry,
                  child: const Text('Try again'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(72, 8, 72, 0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async => Navigator.of(context).pop(),
                  child: const Text('Go back'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
