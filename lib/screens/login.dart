import 'package:flutter/material.dart';
import 'package:jin_app/widgets/organisms/login/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF242424),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const LoginElement(),
            ),
          ),
        )
    );
  }
}

