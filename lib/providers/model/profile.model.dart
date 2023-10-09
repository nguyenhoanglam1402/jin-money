import 'package:flutter/material.dart';
import 'package:jin_app/types/gender.dart';

class ProfileModel extends ChangeNotifier {
  String _fullName = "Nguyen Hoang Lam";
  String _phoneNumber = "0935145948";
  Gender _gender = Gender.male;
  String _jobTitle = "Unemployment";

  String get fullName => _fullName;
  String get phoneNumber => _phoneNumber;
  Gender get gender => _gender;
  String get jobTitle => _jobTitle;

  void setProfile(String? fullName, [String? phoneNumber, Gender? gender, String? jobTitle]) {
    _fullName = fullName ?? "" ;
    _phoneNumber = phoneNumber ?? "";
    _gender = gender ?? Gender.male;
    _jobTitle = jobTitle ?? "";
    notifyListeners();
  }
}