import 'dart:math';

import 'package:get/get.dart';

class RadioButtonViewController extends GetxController {
  List<String> checkBoxList = [
    "egy",
    "kettő",
    "három",
    "négy",
  ];

  String selectedText = "";

  void setSelectedText(String currentText) {
    selectedText = currentText;
    update();
  }

  String randomSzoveg() {
    int index = Random().nextInt(checkBoxList.length);
    return checkBoxList[index];
  }
}
