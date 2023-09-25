import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double vertical;
  final double horizontal;
  const Spacing({super.key, this.horizontal = 5, this.vertical = 5});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontal,
      height: vertical,
    );
  }
}
