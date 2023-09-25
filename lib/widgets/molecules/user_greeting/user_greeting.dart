import 'package:flutter/material.dart';
import 'package:jin_app/widgets/atoms/avatar/main.dart';

class UserGreeting extends StatefulWidget {
  final String username;
  final int notifications;
  const UserGreeting(
      {super.key, required this.username, required this.notifications});

  @override
  State<UserGreeting> createState() => _UserGreetingState();
}

class _UserGreetingState extends State<UserGreeting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Theme.of(context).colorScheme.background),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Avatar(sourceURL: "assets/images/mock_avatar.jpeg"),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Good morning!",
                    style: TextStyle(
                        color: Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    widget.username,
                    style: const TextStyle(
                      color: Color(0xFF242424),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            tooltip: "Notification",
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xFF242424),
            ),
          )
        ],
      ),
    );
  }
}
