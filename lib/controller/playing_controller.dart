import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class PlayingController extends GetxController{
  TextEditingController tc =TextEditingController();
  List<String> comment =['Yohoo man !'];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
   int value =0;
  bool isLike =true;
  bool fav=true;
  void like(){
    isLike =!isLike;
    inc();
    update();
  }
  void favourite(){
    fav =!fav;
    update();
  }
  void inc(){
    if(value ==0){
      value++;
    }else{value--;}
    update();
  }
}