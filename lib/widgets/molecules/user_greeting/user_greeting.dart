import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jin_app/singleton/time_of_date.dart';
import 'package:jin_app/widgets/atoms/avatar/main.dart';

class UserGreeting extends StatefulWidget {
  final String username;
  final int notifications;
  final bool? showNotification;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onAvatarTap;
  const UserGreeting(
      {super.key,
      required this.username,
      required this.notifications,
      this.backgroundColor = Colors.white,
      this.showNotification = true,
      this.textColor,
      this.onAvatarTap});

  @override
  State<UserGreeting> createState() => _UserGreetingState();
}

class _UserGreetingState extends State<UserGreeting> {
  Timer? timeLoop;
  String greeting = "";
  TimerManagerSingleton timeManager = TimerManagerSingleton.instance;
  TimerManagerSingleton timeManager2 = TimerManagerSingleton.instance;

  void updateGreetingString(String greetingText, [Timer? timer]) {
    setState(() {
      greeting = greetingText;
    });
  }

  @override
  void initState() {
    String greetingResponse = timeManager.renderGreeting(DateTime.now().hour);
    updateGreetingString(greetingResponse);
    timeLoop =
        timeManager.subscribeGreetingTimeUpdate(updateGreetingString, 30000);
    super.initState();
  }

  @override
  void dispose() {
    timeLoop!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: widget.backgroundColor ??
              Theme.of(context).colorScheme.background),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (widget.onAvatarTap != null) {
                    Scaffold.of(context).openDrawer();
                  }
                  widget.onAvatarTap!();
                },
                child:
                    const Avatar(sourceURL: "assets/images/mock_avatar.jpeg"),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Good $greeting!",
                    style: TextStyle(
                        color: widget.textColor ?? const Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    widget.username,
                    style: TextStyle(
                      color: widget.textColor ?? const Color(0xFF242424),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  )
                ],
              )
            ],
          ),
          widget.showNotification! == true
              ? IconButton(
                  onPressed: () {},
                  tooltip: "Notification",
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: Color(0xFF242424),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
