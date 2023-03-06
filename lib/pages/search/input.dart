import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/app/ui/colors.dart';

class AppTextInput extends StatelessWidget {
  final String? label;
  final String? error;
  final Widget? suffixIcon;

  final TextEditingController? controller;
  final InputDecoration decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool autofocus;
  final bool obscureText;
  final String obscuringCharacter;
  final bool autocorrect;
  final int maxLines;
  final int? minLines;
  final bool expands;
  final bool readOnly;
  final bool? showCursor;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final DragStartBehavior dragStartBehavior;
  final FocusNode? focusNode;

  final GestureTapCallback? onTap;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final int errorMaxLines;

  const AppTextInput({
    Key? key,
    this.label,
    this.error,
    this.suffixIcon,
    this.controller,
    this.decoration = const InputDecoration(),
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.obscuringCharacter = '*',
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.onTap,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.keyboardType,
    this.focusNode,
    this.errorMaxLines = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return TextField(
      style: style ?? TextStyle(color: colors.textInputTextColor),
      cursorColor: cursorColor ?? AppColors.lightGreen1BD099,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      strutStyle: strutStyle,
      textDirection: textDirection,
      textAlign: textAlign,
      autofocus: autofocus,
      readOnly: readOnly,
      showCursor: showCursor,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      autocorrect: autocorrect,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      inputFormatters: inputFormatters,
      enabled: enabled,
      cursorWidth: cursorWidth,
      cursorRadius: cursorRadius,
      keyboardAppearance: keyboardAppearance,
      scrollPadding: scrollPadding,
      enableInteractiveSelection: enableInteractiveSelection,
      buildCounter: buildCounter,
      textAlignVertical: textAlignVertical,
      onSubmitted: onSubmitted,
      dragStartBehavior: dragStartBehavior,
      scrollPhysics: scrollPhysics,
      scrollController: scrollController,
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      decoration: decoration.copyWith(
        labelText: label,
        errorText: error,
        errorMaxLines: errorMaxLines,
        labelStyle: TextStyle(
          color: error == null || error == '' ? AppColors.greyA2ABB9 : AppColors.pinkFF7D85,
        ),
        suffixIcon: suffixIcon == null
            ? null
            : IconTheme(
                data: colors.iconThemeData,
                child: suffixIcon!,
              ),
      ),
    );
  }
}
