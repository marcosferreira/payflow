import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController {
  // ignore: unused_field
  var _isAuthenticate = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticate = true;
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
      _isAuthenticate = false;
    }
  }
}
