import 'package:flutter/material.dart';
import 'package:jin_app/resources/icons.assets.dart';
import 'package:jin_app/types/cashflow_type.dart';
import 'package:jin_app/widgets/atoms/divider/main.dart';
import 'package:jin_app/widgets/molecules/cashflow_tracker/main.dart';

class IncomeOutcomeUI extends StatelessWidget {
  final double incomeBalance;
  final double outcomeBalance;
  const IncomeOutcomeUI(
      {super.key, required this.incomeBalance, required this.outcomeBalance});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 1,
                      child: CashFlowTracker(
                        type: CashFlowType.income,
                        amount: incomeBalance,
                        title: "Income",
                      )),
                  const DividerLine(strokeWidth: 1, space: 15,),
                  Expanded(
                      flex: 1,
                      child: CashFlowTracker(
                        title: "Outcome",
                        amount: outcomeBalance,
                        type: CashFlowType.outcome,
                      )),
                ],
              ),
            ),
          ),
          const Positioned(
              top: -5,
              left: 0,
              child: Image(
                image: AssetImage(IconResources.ICON_CICLE_PINK),
              )),
          const Positioned(
              bottom: -10,
              right: 0,
              child: Image(
                image: AssetImage(IconResources.ICON_CICLE_YELLOW),
              )),
        ],
      ),
    );
  }
}
