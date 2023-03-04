import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage/home.dart';

class Payment_Confirmed_Page extends StatefulWidget {
  const Payment_Confirmed_Page({super.key});

  @override
  _Payment_Confirmed_PageState createState() => _Payment_Confirmed_PageState();
}

class _Payment_Confirmed_PageState extends State<Payment_Confirmed_Page> {
  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
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
                child: Row(children: const [
                  Icon(
                    Icons.home,
                  ),
                  Text("Home "),
                  Text(" > "),
                  Icon(Icons.book),
                  Text("Booking"),
                  Text(" > "),
                  Icon(Icons.payment),
                  Text("Payment"),
                ]),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Payment Confirmed!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(title: ''),
                    ),
                  );
                },
                child: const Text('Go back!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
