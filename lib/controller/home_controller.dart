import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../pages/info_page.dart';
class HomeController extends GetxController {

   bool isLike =true;
   List list =[];
   int value = 3;
   void togle(){
     isLike = !isLike;
     update();
   }
   void incre() {
     isLike ? value++ : value--;
     update();
   }
   getData() async{
     final jsonfile = await rootBundle.loadString("assets/data.json");
     final data =jsonDecode(jsonfile);
     list =data;
     update();
   }
   @override
  void onInit() {
     getData();
  }


Future<void> navigat(name,image,comment) async{
  await Get.to(InfoPage( name: name,image:image ,comment: comment,));
}
  }
