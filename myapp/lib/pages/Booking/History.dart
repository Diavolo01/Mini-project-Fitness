import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            const SizedBox(height: 16),
            Text('Selected Date: ${DateFormat('dd/MM/yyyy').format(date)}'),
            const SizedBox(height: 16),
            Text('Selected Time Slot: ${timeSlot.format(context)}'),
          ],
        ),
      ),
    );
  }
}
