import 'package:flutter/material.dart';
import 'package:git/git.dart';
// import 'package:chatuilotti/Pages/login_page.dart';
// import 'package:chatuilotti/Pages/sign_up.dart';
// import 'package:chatuilotti/Pages/complete_profile.dart';

import 'package:chatuilottie/Pages/login_page.dart';
import 'package:chatuilottie/Pages/sign_up.dart';
import 'package:chatuilottie/Pages/complete_profile.dart';


Future<void> main() async {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
