import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoreTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? textHint;

  const CoreTextField({super.key, this.textHint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.plusJakartaSans().copyWith(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: textHint,
        border: const OutlineInputBorder(),
        focusColor: Colors.white,
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
