import 'package:flutter/material.dart';
import 'package:jin_app/widgets/atoms/button/text_button.dart';

class ContainerSummary extends StatelessWidget {
  final String title;
  final Widget widget;
  final String? actionTitle;
  final void Function() onActionClick;
  const ContainerSummary(
      {super.key,
      required this.title,
      required this.widget,
      this.actionTitle = "See all",
      required this.onActionClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            CoreTextButton(onTap: onActionClick, text: actionTitle ?? "")
          ],
        ),
        widget
      ],
    );
  }
}
