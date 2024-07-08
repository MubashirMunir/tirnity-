// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controller/button_controller.dart';
//
//
// class LikeButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final LikeController likeController = Get.put(LikeController());
//
//     return Obx((){
//       return IconButton(
//         icon: Icon(
//           likeController.isLiked.value ? Icons.favorite : Icons.favorite_border,
//           color: likeController.isLiked.value ? Colors.red : Colors.grey,
//         ),
//         onPressed: likeController.toggleLike,
//       );
//     });
//   }
// }