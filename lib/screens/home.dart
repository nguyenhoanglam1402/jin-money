import 'package:flutter/material.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';
import 'package:jin_app/widgets/organisms/earning/main.dart';

import 'package:jin_app/widgets/organisms/income_outcome/main.dart';
import 'package:jin_app/widgets/molecules/total_balance_card/main.dart';
import 'package:jin_app/widgets/molecules/user_greeting/user_greeting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const UserGreeting(username: "Nguyen Hoang Lam", notifications: 1),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ListView(scrollDirection: Axis.vertical,
                    children: const [
                      TotalBalanceCard(),
                      Spacing(vertical: 16),
                      IncomeOutcome(),
                      Spacing(vertical: 16),
                      EarningList()
            ]),
          ))
        ],
      ),
    );
  }
}
