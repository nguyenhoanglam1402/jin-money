import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';

class CoreElevateButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final IconData? prefixIcon;
  final Color? backgroundColor;
  final Color? textColor;
  const CoreElevateButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(backgroundColor ?? Colors.white),
            overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
              if (states.contains(MaterialState.pressed)) {
                return const Color(0xFFE0533D);
              }
              return null;
            })),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            prefixIcon != null ? Icon(prefixIcon!, size: 20,) : const SizedBox(),
            prefixIcon != null
                ? const Spacing(horizontal: 10)
                : const SizedBox(),
            Text(
              text,
              style: GoogleFonts.plusJakartaSans()
                  .copyWith(color: textColor ?? Colors.black, fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
