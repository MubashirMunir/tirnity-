import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/post_controller.dart';

class Post extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<PostController>(builder: (ctrl) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(children: [
              const CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://cdn.dribbble.com/users/3002151/screenshots/15132708/media/7bbc6058bff2d6088899014aa123d6cc.jpg?resize=1000x750&vertical=center'),
              ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        Text("Xaviergroup"),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 14,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "1 W",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 11),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text('Cant wait for things to below !!!'),
                    )
                  ]),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Like ${ctrl.value}',
                  style: TextStyle(fontSize: 12, color: Colors.white54),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 190.0),
                  child: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.white54,
                    size: 12,
                  ),
                ),
                Text(
                  'Comments 1',
                  style: TextStyle(fontSize: 12, color: Colors.white54),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.density_small_rounded,
                      size: 13,
                    )),
                TextButton(
                    onPressed: () {
                      ctrl.toggle();
                    },
                    child: ctrl.Like
                        ? Text(
                            'Like',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        : Text(
                            'Unlike',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Comment',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Share',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )),
                TextButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        height: 200,
                        color: Colors.black,
                        child: Column(children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.account_circle),
                            title: const Text('Profile'),
                            onTap: () {
                              Get.back(); // Close the bottom sheet
                              // Perform other actions
                            },
                          ),
                          ListTile(
                              leading: const Icon(Icons.settings),
                              title: const Text('Settings'),
                              onTap: () {
                                Get.back(); // Close the bottom sheet
                                // Perform other actions
                              }),
                        ]),
                      ),
                      backgroundColor: Colors.white,
                      isScrollControlled:
                          true, // To make the bottom sheet scrollable
                    );
                  },
                  child: const Text(
                    'More',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
