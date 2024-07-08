import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ComplainController extends GetxController {
  void pop() {
    Get.defaultDialog(
        title: 'Alert',
        content: Text('Your report was sent.'),
        confirm: TextButton(
          child: Text('Close'),
          onPressed: () {
            Get.back(); // Close the dialog
          },
        ));
  }
}
