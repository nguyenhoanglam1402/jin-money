import 'package:flutter/material.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';
import 'package:jin_app/widgets/molecules/catergory_card/main.dart';
import 'package:jin_app/widgets/molecules/container_summary/main.dart';

class EarningList extends StatefulWidget {
  const EarningList({super.key});

  @override
  State<EarningList> createState() => _EarningListState();
}

class _EarningListState extends State<EarningList> {
  @override
  Widget build(BuildContext context) {
    return ContainerSummary(
        title: "Earning",
        onActionClick: () {},
        widget: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: SizedBox(
            height: 140,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const CategoryCard(
                  title: "Upwork",
                  amount: 18000000,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Spacing(horizontal: 10);
              },
              itemCount: 10,
            ),
          ),
        ));
  }
}
