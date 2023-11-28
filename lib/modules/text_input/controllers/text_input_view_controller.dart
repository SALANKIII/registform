import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInputViewController extends GetxController {
  TextEditingController mail = TextEditingController();
  TextEditingController pwd = TextEditingController();

  void showData() {
    if (mail.text != "" && pwd.text != "") {
      // okés
      Get.dialog(CupertinoAlertDialog(
        title: Text("Sikeres belépés!"),
        content: Column(
          children: [
            Text(mail.text),
            Text(pwd.text),
          ],
        ),
        actions: [
          CupertinoDialogAction(
            child: Text("köszi"),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ));
    } else if (mail.text == "") {
      // nem adta meg a mailt
      Get.dialog(CupertinoAlertDialog(
        title: Text("belépési hiba!"),
        content: Text("nem adtad meg a mailed"),
        actions: [
          CupertinoDialogAction(
            child: Text("ok"),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ));
    } else {
      // nem adta meg pwd-t
      Get.dialog(CupertinoAlertDialog(
        title: Text("belépési hiba!"),
        content: Text("nem adtad meg a jelszavad"),
        actions: [
          CupertinoDialogAction(
            child: Text("ok"),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ));
    }
  }
}
