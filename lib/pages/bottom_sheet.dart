import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.bottomSheet(
          Container(
            height: 200,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () {
                    Get.back(); // Close the bottom sheet
                    // Perform other actions
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Get.back(); // Close the bottom sheet
                    // Perform other actions
                  },
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          isScrollControlled: true, // To make the bottom sheet scrollable
        );
      },
      child: Text('Show Bottom Sheet'),
    );
  }
}
