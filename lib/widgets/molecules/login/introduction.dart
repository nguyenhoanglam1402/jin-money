import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 64,
      child: Column(
        children: [
          Text(
            "Make Your Financial Management Easier",
            style: GoogleFonts.plusJakartaSans().copyWith(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              height: 1.5,
              fontStyle: FontStyle.normal,
              wordSpacing: 5,
            ),
          ),
          const Spacing(
            vertical: 10,
          ),
          Text(
            "Financy is a mobile application that can help you manage your finances in a simple way.",
            style: GoogleFonts.plusJakartaSans().copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class SecondIntroduction extends StatelessWidget {
  const SecondIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 64,
      child: Column(
        children: [
          Text(
            "Strong spending management",
            style: GoogleFonts.plusJakartaSans().copyWith(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              height: 1.5,
              fontStyle: FontStyle.normal,
              wordSpacing: 5,
            ),
          ),
          const Spacing(
            vertical: 10,
          ),
          Text(
            "Alerts are triggered when a category exceeds its budget. Additionally, re-plan for any unplanned occurrences immediately.",
            style: GoogleFonts.plusJakartaSans().copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
