import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms/bloc.dart';
import 'package:forms/data.dart';
import 'package:forms/validators.dart';
import 'package:forms/widgets.dart';
import 'package:weather_app/pages/search/input.dart';

class AppFormTextInput extends StatefulWidget {
  final List<Validator>? validators;
  final StringFormValue Function()? initValue;
  final String? fieldName;

  final String? label;
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

  final GestureTapCallback? onTap;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;

  const AppFormTextInput({
    Key? key,
    this.label,
    this.suffixIcon,
    this.validators,
    this.initValue,
    this.fieldName,
    this.controller,
    this.decoration = const InputDecoration(),
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
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
  }) : super(key: key);

  @override
  _AppFormTextInputState createState() => _AppFormTextInputState();
}

class _AppFormTextInputState extends State<AppFormTextInput> {
  TextEditingController? _controller;

  StringFormValue Function() get _initValue => widget.initValue ?? () => const StringFormValue();

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller!.text = _initValue().data;
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller!.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppFormField<String>(
      fieldName: widget.fieldName!,
      initValue: _initValue,
      validators: widget.validators!,
      buildWhen: (previousState, state) => state.event is! OnUpdateValue,
      builder: (context, state) {
        if (state.event is OnRewriteValue ||
            state.event is OnRewriteFormValues && _controller != null) {
          _controller!.text = state.value.data;
          _controller!.selection =
              TextSelection.fromPosition(TextPosition(offset: _controller!.text.length));
        }

        if (state.event is OnRewriteFormValuesFieldEmpty) {
          if (_controller!.text.isEmpty) {
            _controller!.text = state.value.data;
          }
        }

        return AppTextInput(
          key: state.key,
          label: widget.label,
          suffixIcon: widget.suffixIcon,
          keyboardType: widget.keyboardType,
          textCapitalization: widget.textCapitalization,
          textInputAction: widget.textInputAction,
          style: widget.style,
          strutStyle: widget.strutStyle,
          textDirection: widget.textDirection,
          textAlign: widget.textAlign,
          autofocus: widget.autofocus,
          readOnly: widget.readOnly,
          showCursor: widget.showCursor,
          obscureText: widget.obscureText,
          autocorrect: widget.autocorrect,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          expands: widget.expands,
          maxLength: widget.maxLength,
          onTap: widget.onTap,
          onEditingComplete: widget.onEditingComplete,
          inputFormatters: widget.inputFormatters,
          enabled: widget.enabled,
          cursorWidth: widget.cursorWidth,
          cursorRadius: widget.cursorRadius,
          cursorColor: widget.cursorColor,
          keyboardAppearance: widget.keyboardAppearance,
          scrollPadding: widget.scrollPadding,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          buildCounter: widget.buildCounter,
          textAlignVertical: widget.textAlignVertical,
          onSubmitted: widget.onSubmitted,
          dragStartBehavior: widget.dragStartBehavior,
          scrollPhysics: widget.scrollPhysics,
          scrollController: widget.scrollController,
          controller: _controller,
          focusNode: state.focusNode,
          onChanged: (text) {
            BlocProvider.of<FormsBloc>(context).add(
              OnUpdateValue<String>(
                widget.fieldName!,
                StringFormValue(text),
              ),
            );

            if (widget.onChanged != null) {
              widget.onChanged!(text);
            }
          },
          error: state.errorMessage.map((it) => it.localize(context)).orElseNull,
        );
      },
    );
  }
}
