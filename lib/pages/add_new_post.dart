import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/add_new_post.dart';

class AddNewPost extends StatelessWidget {
  AddNewPost({super.key});
  File? _image;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddNewPostController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Add POst"),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                      maxRadius: 14,
                      backgroundImage: AssetImage("assets/t.png")),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text("trinity"),
                  const SizedBox(
                    width: 2,
                  ),
                  const Icon(
                    Icons.verified,
                    color: Colors.blue,
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    height: 37,
                    width: 70,
                    child: const Center(
                      child: Text(
                        "post",
                      ),
                    ),
                  )
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Whats in you mind..",
                    hintStyle: TextStyle(
                        color: Colors.white54, fontStyle: FontStyle.normal),
                    border: InputBorder.none),
              ),
              const Divider(
                color: Colors.white38,
              ),
              IconButton(onPressed: () {ctrl.getImage();}, icon: Icon(Icons.image)),
              // Image.network(
              //     "https://th.bing.com/th/id/R.4a9f3f91d49c0fab4e8bf278beb0e5a1?rik=6f9A9R6Y3fyDag&pid=ImgRaw&r=0"),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 300,
                color: Colors.grey[300],
                child: CircleAvatar(backgroundImage: ctrl.imagePath.isNotEmpty? FileImage(File(ctrl.imagePath.toString())):null),
              ),

            ],
          ),
        ),
      );
    });
  }
}
