import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
// import 'package:chatuilotti/Pages/complete_profile.dart';

import 'package:chatuilottie/Pages/complete_profile.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override

  final TextEditingController _textEditinguseranmeController = new TextEditingController();
  final TextEditingController _textEditingpasswordController = new TextEditingController();
  final TextEditingController _textEditingconfirmpasswordController = new TextEditingController();

  void checkvalue(){
    String username = _textEditinguseranmeController.text.trim();
    String password = _textEditingpasswordController.text.trim();
    String confirmpassword = _textEditingconfirmpasswordController.text.trim();

    if(username.isEmpty && password.isEmpty && confirmpassword.isEmpty){
      print("Enter fields");
    }
    else if(password != confirmpassword){
      print("Password not matched");
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
                  padding: EdgeInsets.only(top: 80),
                  child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_0mohmgca.json"),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: _textEditinguseranmeController,
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
                SizedBox(height:20),
                TextFormField(
                  controller: _textEditingconfirmpasswordController,
                  decoration: InputDecoration(
                    hintText: "Confirm Password..",
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
                SizedBox(height:35),

                CupertinoButton(
                  child: Text("Sign Up"),
                  color: Colors.red,

                  onPressed: (){
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context){
                    //   return CompleteProfile();
                    // }));
                    checkvalue();
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have a account"),
                    CupertinoButton(child: Text("Login"), onPressed: (){
                      Navigator.pop(context);
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
