import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxViewController extends GetxController {
  List teendok = [
    "megcsinaltam a hazit és nem chat GPT-vel",
    "lefőztem egy kávét",
    "szívtam egy frissítőt",
    "tele ettem magam",
  ];

  List currentList = [];

  void setCurrentList(List lista) {
    currentList = lista;
    update();
  }

  List<Widget> teljesitettTeendokListaja() {
    List<Widget> temp = [];

    for (int i = 0; i < currentList.length; i++) {
      temp.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          currentList[i].toString(),
          style: TextStyle(fontSize: 30),
        ),
      ));
    }
    return temp;
  }
}
