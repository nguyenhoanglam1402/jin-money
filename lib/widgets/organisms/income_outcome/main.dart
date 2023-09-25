import 'dart:core';

import 'package:flutter/material.dart';
import 'package:jin_app/widgets/organisms/income_outcome/card_ui.dart';

class IncomeOutcome extends StatefulWidget {
  const IncomeOutcome({super.key});

  @override
  State<IncomeOutcome> createState() => _IncomeOutcomeState();
}

class _IncomeOutcomeState extends State<IncomeOutcome> {
  double incomeBalance = 20000000;
  double outcomeBalance = 1200000;

  @override
  Widget build(BuildContext context) {
    return IncomeOutcomeUI(
        incomeBalance: incomeBalance, outcomeBalance: outcomeBalance);
  }
}
