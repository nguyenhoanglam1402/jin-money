import 'package:flutter/material.dart';
import 'package:jin_app/widgets/molecules/total_balance_card/card_ui.dart';


class TotalBalanceCard extends StatefulWidget {
  const TotalBalanceCard({super.key});

  @override
  State<TotalBalanceCard> createState() => _TotalBalanceCardState();
}

class _TotalBalanceCardState extends State<TotalBalanceCard> {
  double balance = 5000000000;
  
  void handleSetTotal() {
    
    setState(() {
      balance += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CardUI(amount: balance);
  }
}
