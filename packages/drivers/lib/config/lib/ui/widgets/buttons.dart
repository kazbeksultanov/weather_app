import 'package:drivers/config/lib/ui/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:optional/optional.dart';

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? backgroundEnabledColor;

  const AppPrimaryButton(
    this.text, {
    required this.onPressed,
    this.isLoading = false,
    this.backgroundEnabledColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundEnabledColor),
        child: Row(
          children: [
            Expanded(
              child: isLoading
                  ? const Center(
                      child: SizedBox(
                        width: 28,
                        height: 28,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Text(
                      text,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppNavigatorButton extends StatelessWidget {
  final Widget? icon;
  final String title;
  final Optional<String> subTitle;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final bool autoFocus;
  final bool isLoading;

  const AppNavigatorButton({
    required this.title,
    required this.onTap,
    this.icon,
    this.subTitle = const Optional.empty(),
    this.focusNode,
    this.autoFocus = false,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      autofocus: autoFocus,
      child: InkWell(
        onTap: isLoading
            ? null
            : () {
                focusNode?.requestFocus();
                onTap();
              },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: isLoading
              ? const Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 3),
                  ),
                )
              : Row(
                  children: <Widget>[
                    if (icon != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: icon!,
                      ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AppText(title),
                          if (subTitle.isPresent) AppSubtitleText(subTitle.value),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.of(context).iconTheme.color,
                      size: 16,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class AppStackedSwitch extends StatefulWidget {
  final Widget? icon;
  final bool isChecked;
  final bool isLoading;
  final String title;
  final ValueChanged<bool>? onChanged;
  final bool isDisabled;

  const AppStackedSwitch({
    required this.isChecked,
    required this.title,
    required this.onChanged,
    this.icon,
    this.isLoading = false,
    this.isDisabled = false,
    Key? key,
  }) : super(key: key);

  @override
  _AppStackedSwitchState createState() => _AppStackedSwitchState();
}

class _AppStackedSwitchState extends State<AppStackedSwitch> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  void didUpdateWidget(AppStackedSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: false,
      child: InkWell(
        onTap:
            widget.onChanged != null ? () => setState(() => widget.onChanged!(_isChecked)) : null,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
          child: Row(
            children: [
              if (widget.icon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: widget.icon!,
                ),
              Expanded(child: AppText(widget.title)),
              if (widget.isLoading)
                const Padding(
                  padding: EdgeInsets.only(right: 18, top: 12, bottom: 12),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 3),
                  ),
                ),
              if (!widget.isLoading)
                Opacity(
                  opacity: widget.isDisabled ? 0.5 : 1,
                  child: Switch(value: _isChecked, onChanged: widget.onChanged),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
