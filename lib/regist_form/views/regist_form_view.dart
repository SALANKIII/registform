import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/regist_form/controllers/regist_form_view_controller.dart';
import 'package:get/get.dart';

class RegistFormView extends StatelessWidget {
  RegistFormViewController controller = Get.put(RegistFormViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistFormViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.navigate_next_outlined),
              onPressed: () {
               controller.sendDataToTheNextView();
              },
            ),
            appBar: AppBar(
              title: Text("Regisztráció"),
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text("Add meg a neved"),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: controller.lastname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Vezetéknév"),
                        hintText: "Add meg a vezetékneved",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: controller.firstname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Keresztnév"),
                        hintText: "Add meg a keresztneved",
                      ),
                    ),
                  ),
                  Divider(),
                  Text("Add meg a születési dátumod"),
                  Text(controller.birthDate.toString().split(' ')[0]),
                  CupertinoButton.filled(
                    child: Text("Dátum megadása"),
                    onPressed: () {
                      controller.showDatePicker();
                    },
                  ),
                  Divider(),
                  Text("Neme"),
                  FlutGroupedButtons(
                    isRadio: true,
                    data: [
                      "Nő",
                      "Férfi",
                    ],
                    onChanged: (p0) {
                      if (p0 != null) {
                        if (p0.toString() == "Férfi") {
                          controller.male = true;
                        } else {
                          controller.male = false;
                        }
                      }
                    },
                  ),
                  Divider(),
                  Text("kedvenc színed"),
                  FlutGroupedButtons(
                    isRadio: false,
                    data: [
                      "zöld",
                      "kék",
                      "sarga",
                      "piros",
                    ],
                    onChanged: (p0) {
                      if (p0 != null) {
                        controller.favouriteColors = p0;
                        print(p0);
                      }
                    },
                  ),
                  Divider(),
                  Text("Válaszd ki a kedvec autómárkád"),
                  Text("❤️❤️❤️"),
                  CupertinoButton.filled(
                    child: Text("Autómárka kiválasztása"),
                    onPressed: () {
                      Get.bottomSheet(Container(
                        color: Colors.white,
                        height: 150,
                        child: CupertinoPicker(
                          itemExtent: 50,
                          onSelectedItemChanged: (int index) {
                            print(index);
                            controller.setSelectedCarBand(index);
                          },
                          children: controller.elements,
                        ),
                      ));
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
