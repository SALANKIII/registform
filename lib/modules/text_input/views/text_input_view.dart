import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/modules/text_input/controllers/text_input_view_controller.dart';
import 'package:get/get.dart';

class TextInputView extends StatelessWidget {
  TextInputViewController controller = Get.put(TextInputViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextInputViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("login"),
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: controller.mail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Icon(Icons.mail),
                      hintText: "Add meg az Email-ed",
                      icon: Text("Email"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: controller.pwd,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      label: Text("Jelszó"),
                      hintText: "Add meg a jelszavadat",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: CupertinoButton.filled(
                    child: Text("login"),
                    onPressed: () {
                      controller.showData();
                    },
                  ),
                )
              ],
            ),
          );
        });
  }
}
