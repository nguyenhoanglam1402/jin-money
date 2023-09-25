import 'package:flutter/material.dart';
import 'package:jin_app/utils/currency.utils.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';

import 'dart:math' as math;

class CategoryCard extends StatelessWidget {
  final String? title;
  final double? amount;
  const CategoryCard({super.key, this.title = "No data", this.amount = 0});

  Color handleColor() {
    const List<Color> colors = [
      Color(0xFFE0533D),
      Color(0xFFE78C9D),
      Color(0xFF377CC8),
      Color(0xFF469B88),
    ];
    final colorRandom = math.Random().nextInt(colors.length);
    final color = colors[colorRandom];
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 140,
      padding: const EdgeInsets.fromLTRB(5, 16, 5, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: handleColor(),
      ),

      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            child: Container(
              height: 45,
              width: 45,
              color: Colors.white.withOpacity(0.5),
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                direction: Axis.horizontal,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    title![0].toUpperCase(),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              )
            ),
          ),
          const Spacing(vertical: 20),
          Text(title!, style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),),
          const Spacing(vertical: 5),
          Text("\$ ${CurrencyUtil.converter(amount!)}", style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),)
        ],
      ),
    );
  }
}
