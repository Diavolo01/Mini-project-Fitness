import 'package:flutter/material.dart';
import 'package:myapp/Pages/LoginPage/LoginPage.dart';

void main() {
  var app = MyApp();
  runApp(app);
}
class MyApp extends StatelessWidget {
  static const appTitle = "Let's Workout";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
