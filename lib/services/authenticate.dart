

import 'package:firebase_auth/firebase_auth.dart';
import 'package:jin_app/constants/message/authenticate.dart';

enum AuthenticationType {
  pending,
  success,
  failed,
}

class AuthenticationResult {
  final AuthenticationType type;
  final String message;
  final UserCredential? userCredential;

  AuthenticationResult(this.type, this.message, [this.userCredential]);
}

class AuthenticateServices {
  static Future<AuthenticationResult> login(
      String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final result = AuthenticationResult(AuthenticationType.success,
          AuthenticateResponseMessage.LOGIN_SUCCESSFULLY, credential);
      return result;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        final result = AuthenticationResult(AuthenticationType.failed,
            AuthenticateResponseMessage.USER_NOT_FOUND);
        return result;
      } else if (e.code == "wrong-password") {
        final result = AuthenticationResult(AuthenticationType.failed,
            AuthenticateResponseMessage.PASSWORD_WRONG);
        return result;
      }
    } catch (e) {
      final result = AuthenticationResult(
          AuthenticationType.failed, AuthenticateResponseMessage.UNKNOWN_ERROR);
      return result;
    }
    final result = AuthenticationResult(AuthenticationType.pending,
        AuthenticateResponseMessage.EXCEPTION_ERROR);
    return result;
  }

  static Future<AuthenticationResult> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return AuthenticationResult(
        AuthenticationType.success,
        AuthenticateResponseMessage.LOGOUT_SUCCESSFULLY,
      );
    } catch (e) {
      return AuthenticationResult(
          AuthenticationType.failed, AuthenticateResponseMessage.CANNOT_LOGOUT);
    }
  }
}
