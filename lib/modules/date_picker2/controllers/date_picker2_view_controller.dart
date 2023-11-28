import 'package:get/get.dart';

class DatePicker2Controller extends GetxController {
  DateTime dateTime = DateTime.now();

  void setDateTime(DateTime time) {
    dateTime = time;
    update();
  }
}
