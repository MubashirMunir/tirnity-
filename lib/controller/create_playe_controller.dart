import 'package:get/get.dart';

class CreatePlayeController extends GetxController {
  bool speaker = true;
  void volume() {
    speaker = !speaker;
    update();
  }
}
