import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/create_playe_controller.dart';
import 'edit_video.dart';

class CreatePlay extends StatelessWidget {
  const CreatePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatePlayeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Create Play"),
        ),
        body: Column(children: [
          Row(children: [
            const CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage("assets/images/t.png"),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'trinity',
              style: TextStyle(fontSize: 16),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(
                Icons.verified,
                color: Colors.blue,
                size: 14,
              ),
            ),
            const Spacer(),
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(6)),
                height: 27,
                width: 100,
                child: TextButton(
                  onPressed: () {
                    Get.to(EditVideoScreen());
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ]),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.black12,
          ),
          const SizedBox(
            height: 30,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Container(
                  height: 420,
                  width: 300,
                  color: Colors.orange,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.zoom_in_map,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 250,
                  child: IconButton(
                    onPressed: () {
                      ctrl.volume();
                    },
                    icon: ctrl.speaker
                        ? const Icon(Icons.volume_up_outlined)
                        : const Icon(Icons.volume_off_outlined),
                    color: Colors.white,
                  ),
                ),
              ]))
        ]),
      );
    });
  }
}
