import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:squarement/app/resources/color_manager.dart';
import 'package:squarement/app/resources/font_manager.dart';
import 'package:squarement/app/resources/string_manager.dart';
import 'package:squarement/app/resources/style_manager.dart';
import 'package:squarement/app/resources/value_manager.dart';

class AppMultiLineTextFormField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Function(String)? onSubmited;
  final String? Function(String?)? validator;
  final double? height;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final double fontSize;
  final void Function()? onSuffixPressed;

  const AppMultiLineTextFormField(
      {super.key,
      required this.hint,
      required this.controller,
      this.validator,
      this.onSubmited,
      this.suffixIcon,
      this.prefixIcon,
      this.fontSize = FontSize.s12,
      this.inputFormatters,
      this.obscureText = false,
      this.onSuffixPressed,
      this.height});
  @override
  State<AppMultiLineTextFormField> createState() =>
      _AppMultiLineTextFormFieldState();
}

class _AppMultiLineTextFormFieldState extends State<AppMultiLineTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250,
      height: widget.height ?? 30,

      padding: const EdgeInsets.symmetric(horizontal: AppSize.s8),
      decoration: BoxDecoration(
        // border: Border.all(
        //   width: 1,
        //   color: Colors.grey,
        // ),
        borderRadius: BorderRadius.circular(AppSize.s10),
      ),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        controller: widget.controller,
        onFieldSubmitted: widget.onSubmited,
        minLines: null,
        maxLines: null,
        validator: widget.validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.pleaseEnterValue;
              } else {
                return null;
              }
            },
        textAlignVertical: TextAlignVertical.top,
        inputFormatters: widget.inputFormatters,
        obscureText: widget.obscureText,
        expands: true,
        decoration: InputDecoration(
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    size: AppSize.s16,
                    color: ColorManager.primary,
                  )
                : null,
            hintText: widget.hint,
            hintStyle: getRegularStyle(
              color: ColorManager.lightGrey,
              fontSize: widget.fontSize,
            ),
            alignLabelWithHint: true,
            suffixIconConstraints: const BoxConstraints(maxHeight: AppSize.s16),
            suffixIcon: widget.suffixIcon != null
                ? IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: widget.onSuffixPressed ?? () {},
                    icon: Icon(
                      widget.suffixIcon,
                      size: AppSize.s16,
                      color: ColorManager.grey,
                    ),
                  )
                : null),
      ),
    );
  }
}
