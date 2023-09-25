import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_app/resources/images.assets.dart';
import 'package:jin_app/utils/currency.utils.dart';

class CardUI extends StatelessWidget {
  final double amount;
  const CardUI({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            decoration: const BoxDecoration(
              color: Color(0xFF242424),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Balance",
                    style: GoogleFonts.inter()
                        .copyWith(fontSize: 14, color: Colors.white)),
                const SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Text(
                  "${CurrencyUtil.converter(amount)} VND",
                  style: GoogleFonts.plusJakartaSans().copyWith(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text(
                              "My Wallet",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  padding: EdgeInsets.zero,
                                  shape: const CircleBorder(),
                                  child: const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black,
                                  )),
                            )
                          ],
                        )),

                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: -20,
              right: -30,
              child: Transform.rotate(
                angle: math.pi / 4,
                child: const Image(
                    image: AssetImage(ImageResources.CARD_DECOR_BLUE_YELLOW)),
              )),
          const Positioned(
              bottom: 0,
              left: -40,
              child: Image(
                image: AssetImage(ImageResources.CARD_DECOR_GREEN),
              ))
        ],
      ),
    );
  }
}
