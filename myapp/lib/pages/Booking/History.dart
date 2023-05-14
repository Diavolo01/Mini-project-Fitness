import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pages/Payment/Payment.dart';

class BookingHistoryPage extends StatelessWidget {
  final String city;
  final DateTime date;
  final TimeOfDay timeSlot;

  const BookingHistoryPage({
    required this.city,
    required this.date,
    required this.timeSlot,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selected City: $city'),
            SizedBox(height: 16),
            Text('Selected Date: ${DateFormat('dd/MM/yyyy').format(date)}'),
            SizedBox(height: 16),
            Text('Selected Time Slot: ${timeSlot.format(context)}'),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.bottomRight,
              child:  ElevatedButton.icon(
                icon: Icon(Icons.arrow_forward),
                label: Text(''),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const PaymentPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
