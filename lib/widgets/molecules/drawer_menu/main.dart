import 'package:flutter/material.dart';
import 'package:jin_app/providers/model/profile.model.dart';
import 'package:jin_app/services/authenticate.dart';
import 'package:jin_app/widgets/atoms/button/elevate_button.dart';
import 'package:jin_app/widgets/molecules/user_greeting/user_greeting.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  void handleLogout() {
    AuthenticateServices.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserGreeting(
            username: context.watch<ProfileModel>().fullName,
            notifications: 1,
            textColor: Colors.white,
            showNotification: false,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CoreElevateButton(
                    text: "Logout",
                    prefixIcon: Icons.arrow_circle_left_outlined,
                    backgroundColor: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: handleLogout,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
