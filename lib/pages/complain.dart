import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/complain_controller.dart';

class ComplainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GetBuilder<ComplainController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Report'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1498084393753-b411b2d26b34?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
              ),
              const Text(
                'Darke Diss',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const Text('Here is a disk to kindrake'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'You are reporting this video',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                'I just don,t like it',
                style: TextStyle(color: Colors.black),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  'You are not found of this content,feel free to block the user later you can block the user in the setting if you wish',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            onTap: () => ctrl.pop(),
            child: Container(
                height: 20,
                width: screenWidth / 2,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                )),
          ),
        ),
      );
    });
  }
}
