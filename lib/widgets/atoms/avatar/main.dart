import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double width;
  final double height;
  final String sourceURL;

  const Avatar(
      {super.key, required this.sourceURL, this.width = 50, this.height = 50});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(100)),
      child: Image(
        image: AssetImage(sourceURL),
        width: width,
        height: height,
        isAntiAlias: true,
      ),
    );
  }
}
