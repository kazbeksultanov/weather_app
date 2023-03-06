import 'package:drivers/models/app_error.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/app_text.dart';
import 'package:weather_app/app/ui/colors.dart';
import 'package:weather_app/app/ui/kit/icons.dart';
import 'package:weather_app/app/ui/kit/typography.dart';

const kToastDuration = Duration(seconds: 4);

class AppErrorToast extends StatelessWidget {
  final String tag;
  final AppError error;
  final VoidCallback? onErrorDetailsClick;
  final VoidCallback? onClosePressed;
  final VoidCallback? onDismiss;

  const AppErrorToast(
    this.error, {
    required this.tag,
    Key? key,
    this.onErrorDetailsClick,
    this.onClosePressed,
    this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    final title = error.title;
    final description = error.description;

    return Dismissible(
      key: ValueKey(tag),
      direction: DismissDirection.up,
      onDismissed: (direction) => onDismiss?.call(),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colors.primary,
          ),
          child: Material(
            color: Colors.transparent,
            child: Row(
              children: [
                Expanded(
                  child: description.isPresent
                      ? _DescriptionContent(
                          title: title!.localize(context),
                          description: description.value.localize(context),
                        )
                      : _TitleContent(title!.localize(context)),
                ),
                if (onErrorDetailsClick != null)
                  IconButton(
                    icon: Icon(
                      Icons.bug_report,
                      color: colors.normalText.onPrimary,
                    ),
                    highlightColor: Colors.white24,
                    onPressed: onErrorDetailsClick,
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

class _TitleContent extends StatelessWidget {
  final String title;

  const _TitleContent(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: AppTextTypes.normalSmall.widget(
        title,
        color: colors.normalText.onPrimary,
      ),
    );
  }
}

class _DescriptionContent extends StatelessWidget {
  final String? title;
  final String? description;

  const _DescriptionContent({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          AppSmallText(
            title,
            color: colors.normalText.onPrimary,
          ),
          const SizedBox(height: 4),
          AppLinkText(
            description,
            color: colors.normalText.onPrimary,
          ),
        ],
      ),
    );
  }
}
