import 'package:flutter/foundation.dart';

class AuthProviderModel  with ChangeNotifier{
  bool _isAuthenticated = false;

  bool get isAuth => _isAuthenticated;

  void setAuthState(bool state) {
    _isAuthenticated = state;
    notifyListeners();
  }
}