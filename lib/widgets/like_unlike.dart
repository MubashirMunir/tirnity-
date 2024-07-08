import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/button_controller.dart';

class Toogle extends StatelessWidget {
   Toogle({super.key});
  final LikeController likeController = Get.put(LikeController());

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return TextButton(onPressed: (likeController.toggleLike), child:likeController.isLiked.value?Text('Like'):Text('Unlike'));

  }
    );}}
