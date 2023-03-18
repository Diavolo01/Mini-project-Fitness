import 'package:flutter/material.dart';
import 'package:myapp/Pages/LoginPage/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  var app = MyApp();
  runApp(app);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

