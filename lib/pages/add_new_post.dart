import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'send_page.dart';

class AddNewPost extends StatefulWidget {
  const AddNewPost({super.key});

  @override
  State<AddNewPost> createState() => _AddNewPostState();
}

class _AddNewPostState extends State<AddNewPost> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    } else {
      const Text("No image");
    }
  }

  @override
  Widget build(BuildContext context) {
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
                    maxRadius: 14, backgroundImage: AssetImage("assets/t.png")),
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
                InkWell(
                  onTap: () {
                    Get.to(SendPage());
                  },
                  child: Container(
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
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: IconButton(
                  onPressed: () {
                    getImage();
                  },
                  icon: const Icon(Icons.image)),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                child: _image == null
                    ? Image.network(
                        "https://th.bing.com/th/id/R.4a9f3f91d49c0fab4e8bf278beb0e5a1?rik=6f9A9R6Y3fyDag&pid=ImgRaw&r=0")
                    : Image.file(_image!)),
          ],
        ),
      ),
    );
  }
}
