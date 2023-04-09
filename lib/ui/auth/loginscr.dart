import 'package:firebaselearning/ui/widget/round_button.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login Sacreen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()
                    ),
                      validator:(value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                      }
                        return null;
                      },
                  ),
                  SizedBox(height: 30),
                    TextFormField(
                      keyboardType:TextInputType.text,
                      controller: passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder()
                      ),
                      validator:(value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        }
                        return null;
                      },

                    ),
                    SizedBox(height:50),
                    RoundButton(
                      title: 'login',
                      ontap: (){
                        if(_formkey.currentState!.validate()){
                        }
                      },
                    )
                  ],
                ),
              ),
      ),
      ],),
    );
  }
}
