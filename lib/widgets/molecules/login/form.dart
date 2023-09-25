import 'package:flutter/material.dart';
import 'package:jin_app/widgets/atoms/textfield/main.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _loginInputController = TextEditingController();
  final _passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 64,
      child: Column(
        children: [
          CoreTextField(controller: _loginInputController),
          CoreTextField(controller: _passwordInputController),
        ],
      ),
    );
  }
}

