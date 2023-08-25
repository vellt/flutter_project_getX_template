import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeScreenController extends GetxController {
  int szamlalo = 0;

  void novelo() {
    szamlalo++;
    update();
  }
}
