import 'package:get/get.dart';

class PostController extends GetxController {
  bool Like = true;
  int value = 3;

  void toggle() {
    Like = !Like;
    Like ? value++ : value--;
    update();
  }

  void incre() {
    Like ? value++ : value--;
  }
}
