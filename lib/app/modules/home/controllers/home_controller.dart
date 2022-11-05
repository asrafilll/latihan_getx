import 'package:get/get.dart';

class HomeController extends GetxController {
  var id = ''.obs;

  changeStatus(String idButton) {
    id.value = idButton;
    update();
  }
}
