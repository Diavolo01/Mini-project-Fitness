import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BookingData extends ChangeNotifier {
  String _selectedCity = 'New York';
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  String get selectedCity => _selectedCity;
  DateTime get selectedDate => _selectedDate;
  TimeOfDay get selectedTime => _selectedTime;

  void updateBookingData(String city, DateTime date, TimeOfDay time) {
    _selectedCity = city;
    _selectedDate = date;
    _selectedTime = time;
    notifyListeners();
  }
}
