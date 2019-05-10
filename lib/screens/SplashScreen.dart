import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tk_apps/screens/LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });

    return Scaffold(
      body: Center(
        child: Image.network(
          "https://raw.githubusercontent.com/putraxor/flutter-login-ui/master/assets/logo.png"
          ),
      ),
    );
  }
}
