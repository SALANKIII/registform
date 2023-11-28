import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElementPickerViewController extends GetxController {
  List<Widget> elements = [
    Text("vasalás", style: TextStyle(fontSize: 40)),
    Text("főzés", style: TextStyle(fontSize: 40)),
    Text("Mosás", style: TextStyle(fontSize: 40)),
    Text("evés", style: TextStyle(fontSize: 40)),
  ];

  int index = -1;

  void setIndex(int index) {
    this.index = index;
    update();
  }

  Widget selectedElement() {
    if (index == -1) {
      // nincs kiválasztva semmi
      return Text("");
    } else {
      return elements[index];
    }
  }
}
