import 'package:flutter/material.dart';

class Timeslot {
  final String time;
  bool selected;

  Timeslot({required this.time, this.selected = false});
}

class TimeslotBooking extends StatefulWidget {
  @override
  _TimeslotBookingState createState() => _TimeslotBookingState();
}

class _TimeslotBookingState extends State<TimeslotBooking> {
  List<Timeslot> timeslots = [
    Timeslot(time: '10:00 AM'),
    Timeslot(time: '11:00 AM'),
    Timeslot(time: '12:00 PM'),
    Timeslot(time: '01:00 PM'),
    Timeslot(time: '02:00 PM'),
    Timeslot(time: '03:00 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeslot Booking'),
      ),
      body: ListView.builder(
        itemCount: timeslots.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(timeslots[index].time),
            value: timeslots[index].selected,
            onChanged: (bool? value) {
              setState(() {
                timeslots[index].selected = value!;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          List<String> selectedTimeslots = [];
          for (var timeslot in timeslots) {
            if (timeslot.selected) {
              selectedTimeslots.add(timeslot.time);
            }
          }
          print('Selected timeslots: $selectedTimeslots');
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
