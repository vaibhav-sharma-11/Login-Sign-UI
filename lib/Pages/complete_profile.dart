import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';


class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override

  final TextEditingController _textEditingController = new TextEditingController();

  void check(){
    String profile = _textEditingController.text.trim();

    if(profile.isEmpty){
      print("Enter profile name");
    }
    else{
        print("Sucessfully login");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: 780,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xffff9a9e),
                    Color(0xfffecfef)
                  ]
              ),
            ),
          child: Column(

            children: [
              SizedBox(height: 40),
              Lottie.network("https://assets9.lottiefiles.com/packages/lf20_xyadoh9h.json"),
              SizedBox(height: 40),
              TextFormField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: "Profile Name..",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.public_rounded,
                    size: 30,
                    color: Colors.red,
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CupertinoButton(
                child: Text("Complete"),
                color: Colors.red,

                onPressed: (){
                  check();
                },
              ),
            ],
          ),
          ),
      ),
      );

  }
}
