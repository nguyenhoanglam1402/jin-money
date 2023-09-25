import 'package:flutter/material.dart';
import 'package:jin_app/resources/images.assets.dart';

class HeroElement extends StatelessWidget {
  const HeroElement({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              bottom: 11,
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 90,
                child: const Image(
                  image: AssetImage(ImageResources.LOGIN_BACKGROUND_HERO),
                ),
              )),
          const Positioned(
            bottom: 12,
            child: SizedBox(
                width: 279,
                height: 380,
                child: Image(
                  image: AssetImage(ImageResources.LOGIN_BACKGROUND_HERO_MODEL),
                )),
          )
        ],
      ),
    );

  }
}
