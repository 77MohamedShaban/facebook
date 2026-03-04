import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    required this.controller,
    this.validator,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      cursorColor: AppColors.blue,
      cursorRadius: Radius.circular(16),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isShowPassword,
      // obscuringCharacter: '*',
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: .w400,
        color: AppColors.grey,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: .w400,
          color: AppColors.grey,
        ),
        filled: true,
        fillColor: AppColors.textFieldFillColor,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.grey,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.red, width: 1),
        ),
      ),
    );
  }
}
