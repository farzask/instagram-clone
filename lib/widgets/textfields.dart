import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final bool isUsername;
  final String hintText;
  final TextInputType textInputType;

  const TextFieldInput({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.isPassword = false,
    this.isUsername = false,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.3)),
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPassword,
    );
  }
}
