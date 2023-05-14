import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'History.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  late String _selectedCity;
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    // Set the initial values for city, date, and time
    _selectedCity = 'New York';
    _selectedDate = DateTime.now();
    _selectedTime = TimeOfDay.now();
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // DropdownButton for city selection
                    Text('Select a city'),
                    DropdownButton<String>(
                      value: _selectedCity,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedCity = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                            child: Text("New York"), value: "New York"),
                        DropdownMenuItem(
                            child: Text("Chiang Rai"), value: "Chiang Rai"),
                        DropdownMenuItem(
                            child: Text("Phuket"), value: "Phuket"),
                        DropdownMenuItem(
                            child: Text("Bangkok"), value: "Bangkok"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Date selection using calendar
                    Text('Select a date'),
                    GestureDetector(
                      onTap: () async {
                        final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: _selectedDate,
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)));
                        if (picked != null) {
                          setState(() {
                            _selectedDate = picked;
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.calendar_today),
                            const SizedBox(width: 8),
                            Text(
                              DateFormat('dd/MM/yyyy').format(_selectedDate),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Time selection using time picker
                    Text('Select a time'),
                    GestureDetector(
                      onTap: () async {
                        final TimeOfDay? picked = await showTimePicker(
                          context: context,
                          initialTime: _selectedTime,
                        );
                        if (picked != null) {
                          setState(() {
                            _selectedTime = picked;
                          });
                        }
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[200],
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.access_time),
                              const SizedBox(width: 8),
                              Text(
                                  '${_selectedTime.hourOfPeriod}:${_selectedTime.minute.toString().padLeft(2, '0')} ${_selectedTime.period.index == 0 ? "AM" : "PM"}'),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 120,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingHistoryPage(
                              city: _selectedCity,
                              date: _selectedDate,
                              timeSlot: _selectedTime,
                            ),
                          ),
                        );
                      },
                      child: Text('Book Now'),
                    ),
                  ),
                ),
              )
            ])));
  }
}

class PaymentPage extends StatelessWidget {
  final String? selectedCity;
  final DateTime? selectedDate;
  final String? selectedTimeSlot;

  PaymentPage({
    required this.selectedCity,
    required this.selectedDate,
    required this.selectedTimeSlot,
  });

  void _handlePayment(BuildContext context) {
    // Perform payment processing logic here
    Navigator.popUntil(context, ModalRoute.withName('/citySelector'));

    // After successful payment, show a dialog with selected information
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Payment Successful'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Selected City: ${selectedCity ?? 'None'}'),
            SizedBox(height: 10),
            Text('Selected Date: ${selectedDate?.toString() ?? 'None'}'),
            SizedBox(height: 10),
            Text('Selected Time Slot: ${selectedTimeSlot?.toString() ?? 'None'}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _handlePayment(context);
              },
              child: Text('Pay'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Selected Reservation Info'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Selected City: ${selectedCity ?? 'None'}'),
                        SizedBox(height: 10),
                        Text('Selected Date: ${selectedDate?.toString() ?? 'None'}'),
                        SizedBox(height: 10),
                        Text('Selected Time Slot: ${selectedTimeSlot ?? 'None'}'),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('View Reservation Info'),
            ),
          ],
        ),
      ),
    );
  }
}
