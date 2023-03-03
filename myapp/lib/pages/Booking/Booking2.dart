import 'package:flutter/material.dart';
import 'package:myapp/pages/Payment/Payment.dart';
import 'package:myapp/pages/Date/Something.dart';


class Booking_Date_Selected extends StatefulWidget {

  const Booking_Date_Selected({super.key});

  @override
  _BookingPage2State createState() => _BookingPage2State();
}

class _BookingPage2State extends State<Booking_Date_Selected> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(children: [
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
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey.shade400),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeslotBooking()),
                        );
                      },
                      child: Text('Book Timeslot'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PaymentPage()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),

    );
  }
}
