import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoreTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Color color;
  final String hintText;
  final bool enable;
  final bool isPassword;
  final bool enableSuggestion;
  final String? Function(String?)? validator;
  final void Function(String)? onChange;
  final void Function(String)? onSubmit;

  const CoreTextField({
    super.key,
    this.color = Colors.white,
    this.validator,
    this.onChange,
    this.label = "",
    this.hintText = "",
    this.onSubmit,
    this.enable = true,
    this.isPassword = false,
    this.enableSuggestion = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: validator,
      controller: controller,
      enabled: enable,
      obscureText: isPassword,
      enableSuggestions: isPassword ? false : enableSuggestion,
      onFieldSubmitted: onSubmit,
      style: GoogleFonts.plusJakartaSans().copyWith(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
        label: Text(
          label,
          style: GoogleFonts.plusJakartaSans().copyWith(color: color),
        ),
        hintText: hintText,
        border: const OutlineInputBorder(),
        focusColor: Colors.white,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
      ),
    );
  }
}
