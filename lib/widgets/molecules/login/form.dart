import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_app/services/authenticate.dart';
import 'package:jin_app/validators/email/main.dart';
import 'package:jin_app/widgets/atoms/button/elevate_button.dart';
import 'package:jin_app/widgets/atoms/spacing/main.dart';
import 'package:jin_app/widgets/atoms/textfield/main.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _loginInputController = TextEditingController();
  final _passwordInputController = TextEditingController();

  bool isPasswordEmpty = true;

  @override
  void dispose() {
    _loginInputController.dispose();
    _passwordInputController.dispose();
    super.dispose();
  }

  Future<void> submitForm() async {
    if (_formKey.currentState!.validate()) {
      final String usernameOrPhoneNumber = _loginInputController.text;
      final String password = _passwordInputController.text;
      final result = await AuthenticateServices.login(usernameOrPhoneNumber, password);
      if (result.type == AuthenticationType.failed) {

      } else {
        Fluttertoast.showToast(
            msg: result.message,
            backgroundColor: Colors.redAccent,
            textColor: Colors.white,
            gravity: ToastGravity.BOTTOM,
            toastLength: Toast.LENGTH_SHORT
        );
      }
    }
  }

  Widget renderLoginButton() {
    if (!isPasswordEmpty) {
      return SizedBox(
          width: MediaQuery.of(context).size.width - 64,
          child: CoreElevateButton(
            text: "Login",
            onPressed: submitForm,
          ));
    }
    return TextButton(
        onPressed: () {},
        child: Text(
          "Don't you have account?",
          style: GoogleFonts.plusJakartaSans().copyWith(color: Colors.white),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        width: MediaQuery.of(context).size.width - 64,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CoreTextField(
                controller: _loginInputController,
                label: "Username or Phone Number",
                validator: EmailValidator.validator,
              ),
              const Spacing(vertical: 20),
              CoreTextField(
                isPassword: true,
                controller: _passwordInputController,
                onChange: (value) {
                  setState(() {
                    if (value != "") {
                      isPasswordEmpty = false;
                    } else {
                      isPasswordEmpty = true;
                    }
                  });
                },
                label: "Password",
              ),
              const Spacing(
                vertical: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [renderLoginButton()],
              )
            ],
          ),
        ));
  }
}
