import 'package:flutter/material.dart';
import 'package:jin_app/widgets/organisms/login/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242424),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const LoginElement(),
      ),
    );
  }
}
