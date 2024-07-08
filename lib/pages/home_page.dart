import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/pages/posts_page.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Tirnity'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.messenger_outline_sharp)),
            ],
          ),
          body: Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Post();
                }),
          ));
    });
  }
}
