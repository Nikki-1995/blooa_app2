import 'package:flutter/material.dart';
import 'package:blood_app2/login.dart';
import 'package:blood_app2/sign_up.dart';
import 'package:blood_app2/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
        Home.id: (context) => Home()
      },
      initialRoute: Home.id,
    );
  }
}
