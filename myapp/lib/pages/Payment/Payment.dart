import 'package:flutter/material.dart';

import 'Payment_Confirmed.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _cardController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _expiryController,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            labelText: 'MM/YY',
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: TextFormField(
                          controller: _cvvController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'CVV',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('SAVE CARD'),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Payment_Confirmed_Page(),
                        ),
                      );
                    },
                    child: Text('PAY NOW'),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
