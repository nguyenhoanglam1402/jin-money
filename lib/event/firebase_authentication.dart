import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jin_app/providers/model/auth.model.dart';
import 'package:provider/provider.dart';

class FirebaseAuthenticateEvents {
  static void onListenAuthStateChange(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((event) {
      bool state = false;
      if(event != null) {
        state = true;
      }
      context.read<AuthProviderModel>().setAuthState(state);
    });
  }
}