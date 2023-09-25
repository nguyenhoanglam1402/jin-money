import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_app/resources/icons.assets.dart';
import 'package:jin_app/types/cashflow_type.dart';
import 'package:jin_app/utils/currency.utils.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';

class CashFlowTracker extends StatelessWidget {
  final double amount;
  final String title;
  final CashFlowType type;
  const CashFlowTracker(
      {super.key,
      this.amount = 0.0,
      this.title = "Income", this.type = CashFlowType.income});

  @override
  Widget build(BuildContext context) {

    String renderIcon() {
      switch(type) {
        case CashFlowType.income:
          return IconResources.ICON_ARROW_DOWN;
        default:
          return IconResources.ICON_ARROW_UP;
      }
    }
    return Row(
      children: [
        Image(
          image: AssetImage(renderIcon()),
        ),
        const Spacing(horizontal: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Income',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Text("\$ ${CurrencyUtil.converter(amount)}",
                style: GoogleFonts.inter().copyWith(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600))
          ],
        )
      ],
    );
  }
}
