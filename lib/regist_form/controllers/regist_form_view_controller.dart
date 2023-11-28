import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/regist_form/models/user.dart';
import 'package:forms/regist_form/views/details_view.dart';
import 'package:get/get.dart';

class RegistFormViewController extends GetxController {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();

  DateTime birthDate = DateTime.now();

  bool male = false;

  List carBands = [
    "LADA",
    "CITROEN",
    "ISUZU",
    "SUZUKI",
    "Mercedes",
    "BMW",
    "Renault",
    "Dacia",
    "Infinity",
    "Porshe",
    "Ferrari",
    "Lamborgini",
    "KIA",
    "FIAT",
    "Volkswagen",
    "Honda",
    "Peugeot"
  ];

  get elements => [
        Text(
          carBands[0],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[1],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[2],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[3],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[4],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[5],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[6],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[7],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[8],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[9],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[10],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[11],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[12],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[13],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[14],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[15],
          style: TextStyle(fontSize: 30),
        ),
        Text(
          carBands[16],
          style: TextStyle(fontSize: 30),
        ),
      ];

  void showDatePicker() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        height: 250,
        child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          mode: CupertinoDatePickerMode.date,
          dateOrder: DatePickerDateOrder.ymd,
          use24hFormat: true,
          onDateTimeChanged: (date) {
            birthDate = date;
            update();
          },
        ),
      ),
    );
  }

  String selectedCarBand = "";

  void setSelectedCarBand(int index) {
    selectedCarBand = carBands[index];
  }

  List favouriteColors = [];

  void sendDataToTheNextView() {
    User user = User(
        firstname: firstname.text,
        lastname: lastname.text,
        date: birthDate,
        male: male,
        favoriteColors: favouriteColors.map((e) => e.toString()).toList(),
        favoriteCarBrand: selectedCarBand);
        Get.to(DetailsView(user: user));
  }
}
