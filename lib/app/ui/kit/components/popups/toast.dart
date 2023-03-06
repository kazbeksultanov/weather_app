import 'package:flutter/material.dart';
import 'package:weather_app/app/ui/colors.dart';
import 'package:weather_app/app/ui/kit/icons.dart';
import 'package:weather_app/app/ui/kit/typography.dart';

const kToastDuration = Duration(seconds: 4);

class AppToast extends StatelessWidget {
  final String tag;
  final String text;
  final VoidCallback? onClosePressed;
  final VoidCallback? onDismiss;

  const AppToast(
    this.text, {
    required this.tag,
    Key? key,
    this.onClosePressed,
    this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;

    return Dismissible(
      key: ValueKey(tag),
      direction: DismissDirection.up,
      onDismissed: (direction) => onDismiss?.call(),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          // height: 48,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colors.primary,
          ),
          child: Material(
            color: Colors.transparent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: AppSmallText(
                      text,
                      color: colors.normalText.onPrimary,
                    ),
                  ),
                ),
                if (onClosePressed != null)
                  IconButton(
                    icon: AppClose1Icon(color: colors.normalText.onPrimary),
                    highlightColor: Colors.white24,
                    onPressed: onClosePressed,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
