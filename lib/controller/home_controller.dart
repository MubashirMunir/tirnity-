import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../pages/info_page.dart';
class HomeController extends GetxController {

   bool isLike =true;

   void togle(value){
     isLike = !isLike;
     update();
   }

    List list =[];
   getData() async{
     final jsonfile = await rootBundle.loadString("assets/data.json");
     final data =jsonDecode(jsonfile);
     list =data;
     //
     // update();

   }
   @override
  void onInit() {
    super.onInit();
    getData();
  }
   bool Like = true;
   int value = 3;

   void toggle() {

     // Like = !Like;
     Like ? value++ : value--;
     update();
   }

   // void incre() {
   //   Like ? value++ : value--;
   // }
Future<void> navigat(name,image,comment) async{
  await Get.to(InfoPage( name: name,image:image ,comment: comment,));
}
  }
