import 'package:flutter/material.dart';

class CoreTextButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final TextStyle? style;
  final Widget? icon;
  const CoreTextButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.icon,
      this.style});

  @override
  Widget build(BuildContext context) {
    List<Widget> handleRenderIcon() {
      const List<Widget> builder = [];
      if (icon != null) builder.add(icon!);
      return builder;
    }

    return GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Text(
              text,
              style: (style ??
                  const TextStyle(
                    color: Color(0xFF489FCD),
                    fontWeight: FontWeight.w700,
                  )),
            ),
            ...handleRenderIcon()
          ],
        ));
  }
}
