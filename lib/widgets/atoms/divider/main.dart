import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  final bool isHorizontal;
  final double strokeWidth;
  final double length;
  final Color color;
  final double space;
  const DividerLine(
      {super.key,
      this.isHorizontal = false,
      this.strokeWidth = 2,
      this.length = 50,
      this.space = 10,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isHorizontal ? strokeWidth : length,
      width: isHorizontal ? length : strokeWidth,
      margin: EdgeInsets.fromLTRB(
          isHorizontal ? 0 : space,
          isHorizontal ? space : 0,
          isHorizontal ? 0 : space,
          isHorizontal ? space : 0),
      color: color,
    );
  }
}
