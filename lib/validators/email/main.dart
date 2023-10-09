class EmailValidator {
  static bool isEmailValid(String email) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  static String? validator(String? value) {
    if (!EmailValidator.isEmailValid(value!)) {
      return "Email is not valid";
    }
    return null;
  }
}