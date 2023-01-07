import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:chatuilotti/Pages/complete_profile.dart';
import 'package:lottie/lottie.dart';
// import 'package:chatuilotti/Pages/sign_up.dart';

import 'package:chatuilottie/Pages/sign_up.dart';
import 'package:chatuilottie/Pages/complete_profile.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key : key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  final TextEditingController _textEditingusernameController = new TextEditingController();
  final TextEditingController _textEditingpasswordController = new TextEditingController();

  void checkvalue(){
    String username = _textEditingusernameController.text.trim();
    String password = _textEditingpasswordController.text.trim();

    if(username.isEmpty && password.isEmpty) {
        print("Enter these fields");
      }
    else{
       Navigator.push(context,
      MaterialPageRoute(builder: (context){
        return CompleteProfile();
      }));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff7028e4),
              Color(0xffe5b2ca)
            ]
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_xlmz9xwm.json"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _textEditingusernameController,
                  decoration: InputDecoration(
                    hintText: "User name..",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _textEditingpasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password..",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                  ),
                ),
                SizedBox(height:30),

                CupertinoButton(
                  child: Text("Login In"),
                  color: Colors.red,

                  onPressed: (){

                    checkvalue();
                  },
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account"),
                    CupertinoButton(child: Text("Sign Up"), onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return SignPage();
                      }));
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
