import 'package:flutter/material.dart';
import 'package:jin_app/providers/model/profile.model.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';
import 'package:jin_app/widgets/molecules/drawer_menu/main.dart';
import 'package:jin_app/widgets/organisms/earning/main.dart';

import 'package:jin_app/widgets/organisms/income_outcome/main.dart';
import 'package:jin_app/widgets/molecules/total_balance_card/main.dart';
import 'package:jin_app/widgets/molecules/user_greeting/user_greeting.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      body: Column(
        children: [
          UserGreeting(
            username: context.watch<ProfileModel>().fullName,
            notifications: 1,
            showNotification: true,
            onAvatarTap: () {},
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ListView(
                    scrollDirection: Axis.vertical,
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
