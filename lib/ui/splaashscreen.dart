import 'package:firebaselearning/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';
class SplaashScreen extends StatefulWidget {
  const SplaashScreen({Key? key}) : super(key: key);

  @override
  State<SplaashScreen> createState() => _SplaashScreenState();
}

class _SplaashScreenState extends State<SplaashScreen> {
  @override
  SplashScreen splashScreen = SplashScreen();
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.login(context);
    print("object");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Firebase Learning", style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
