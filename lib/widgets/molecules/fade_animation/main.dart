import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  final Widget widget;
  const FadeAnimation({required this.widget, super.key});

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
