import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatePickerViewController extends GetxController {
  DateTime birthDate = DateTime.now();
  BuildContext context;
  DatePickerViewController(this.context);

  void chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: birthDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        initialDatePickerMode: DatePickerMode.year);
    if (pickedDate != null) {
      birthDate = pickedDate;
      update();
    }
  }
}
