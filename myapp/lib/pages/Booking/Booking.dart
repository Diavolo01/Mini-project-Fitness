import 'package:flutter/material.dart';
import '../Date/date_pick.dart';
import 'Booking2.dart';

String _selectedCity = "New York";

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
                    "Place",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: DropdownButton(
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
                                child: Text("Chiang rai"), value: "Chiang rai"),
                            DropdownMenuItem(
                                child: Text("Phuket"), value: "Phuket"),
                            DropdownMenuItem(
                                child: Text("Bangkok"), value: "Bangkok"),
                          ],
                          iconSize: 50,
                          iconEnabledColor: Colors.red,
                          isExpanded: true,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          )),
                    ),
                  ),
                  Column(
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
                                  builder: (context) => Selected_Date(title: 'Booking Date'),),
                            );
                          },
                          child: Text('Booking Date'),
                        ),
                      ),
                    ],
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Booking_Date_Selected()));
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
