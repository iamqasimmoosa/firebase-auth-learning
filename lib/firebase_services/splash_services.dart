import 'dart:async';

import 'package:firebaselearning/ui/auth/loginscr.dart';
import 'package:flutter/material.dart';

class SplashScreen{
  void login(BuildContext context){
    Timer(Duration(seconds: 3),
            ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
    );
  }
}