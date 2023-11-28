import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/material.dart';
import 'package:forms/modules/check_box/controllers/check_box_view_controller.dart';
import 'package:get/get.dart';

class CheckBoxView extends StatelessWidget {
  CheckBoxViewController controller = Get.put(CheckBoxViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckBoxViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("check box")),
            body: Column(
              children: [
                FlutGroupedButtons(
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                  data: controller.teendok,
                  onChanged: (p0) {
                    if (p0 is List) {
                      controller.setCurrentList(p0);
                    } else {
                      controller.setCurrentList([]);
                    }
                  },
                ),
                Text("Elvégzett teendők:"),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.teljesitettTeendokListaja(),
                  ),
                )
              ],
            ),
          );
        });
  }
}
