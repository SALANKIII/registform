import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/modules/element_picker/controllers/element_picker_view_controller.dart';
import 'package:get/get.dart';

class ElementPickerView extends StatelessWidget {
  ElementPickerViewController controller =
      Get.put(ElementPickerViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ElementPickerViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: controller.selectedElement(),
            ),
            body: Center(
              child: CupertinoButton.filled(
                child: Text("tallózó"),
                onPressed: () {
                  Get.bottomSheet(Container(
                    color: Colors.white,
                    height: 150,
                    child: CupertinoPicker(
                      itemExtent: 50,
                      onSelectedItemChanged: (int index) {
                        print(index);
                        controller.setIndex(index);
                      },
                      children: controller.elements,
                    ),
                  ));
                },
              ),
            ),
          );
        });
  }
}
