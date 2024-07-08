import 'package:get/get.dart';

class HomeController extends GetxController {

   bool isLike =true;

   void togle(value){
     isLike = !isLike;
     update();
   }


  }
