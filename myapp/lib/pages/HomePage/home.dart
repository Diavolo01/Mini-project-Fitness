import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/Booking/Booking.dart';

import '../LoginPage/LoginPage.dart';

class MyHomePage extends StatefulWidget {
  static const appTitle = "Let's Workout";
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => LoginPage(
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("Let's Workout"),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => signUserOut(context),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey.shade400),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.home,
                    ),
                    Text("Home"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Stack(
                    children: [
                      ListView(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              'assets/images/GymBooking.png',
                            ),
                          ),
                          Positioned.fill(
                            child: Image.asset(
                              'assets/images/PaymentImg.png',
                            ),
                          ),
                          Positioned.fill(
                            child: Image.asset(
                              'assets/images/GymBooking.png',
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: ElevatedButton(
                                child: const Text("Booking"),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const BookingPage(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
