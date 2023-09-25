import 'package:flutter/material.dart';


class CarouselDotElement extends StatelessWidget {
  final int total;
  final int step;
  final void Function(int)? onTouch;
  const CarouselDotElement(
      {super.key, this.step = 0, required this.total, this.onTouch});


  @override
  Widget build(BuildContext context) {
    List<Widget> renderDots() {
      final List<Widget> widgets = [];
      int index = 0;
      while (index < total) {
        final itemIndex = index;
        widgets.add(ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: GestureDetector(
              onTap: () {
                onTouch!(itemIndex);
              },
              child: Container(
                width: 10,
                height: 10,
                color: step == index ? Colors.white : const Color(0xFFA0A0A0),
              ),
            )));
        index++;
      }
      return widgets;
    }

    return Wrap(spacing: 8, children: renderDots());
  }
}
