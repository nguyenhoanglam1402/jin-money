import 'package:flutter/material.dart';
import 'package:jin_app/widgets/atoms/carousel_dot/main.dart';
import 'package:jin_app/widgets/molecules/login/form.dart';
import 'package:jin_app/widgets/molecules/login/hero.dart';
import 'package:jin_app/widgets/molecules/login/introduction.dart';

class LoginElement extends StatefulWidget {
  const LoginElement({super.key});

  @override
  State<LoginElement> createState() => _LoginElementState();
}

class _LoginElementState extends State<LoginElement> {
  int stepCarousel = 0;
  int totalStep = 3;

  final _listViewController = ScrollController(initialScrollOffset: 0.0);

  void handleScrollView() {
    double widthItem = MediaQuery.of(context).size.width - 64;
    _listViewController.animateTo(widthItem * stepCarousel,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut);
  }

  void handleNext() {

    setState(() {
      if (stepCarousel < totalStep - 1) {
        stepCarousel++;
        handleScrollView();
      }
    });
  }

  void handleOnChoose(int index) {
    setState(() {
      if (stepCarousel >= 0) {
        setState(() {
          stepCarousel = index;
          handleScrollView();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeroElement(),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: _listViewController,
              // physics: const NeverScrollableScrollPhysics(),
              children: const [
                Introduction(),
                SecondIntroduction(),
                LoginForm(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CarouselDotElement(
                total: totalStep,
                step: stepCarousel,
                onTouch: (index) {
                  handleOnChoose(index);
                },
              ),
              GestureDetector(
                  onTap: handleNext,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: const Icon(Icons.chevron_right),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
