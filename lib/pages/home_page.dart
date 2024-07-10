import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/pages/comment_page.dart';
import '../controller/home_controller.dart';
import 'add_new_post.dart';
import 'posts_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Tirnity'),
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(AddNewPost());
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.messenger_outline_sharp)),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: ctrl.list.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    ctrl.list[index]['image'].toString()),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(ctrl.list[index]['name']),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Icon(
                                          Icons.verified,
                                          color: Colors.blue,
                                          size: 14,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Text(
                                          "1 W",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        ctrl.list[index]['desc'],
                                        style: const TextStyle(
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 10,
                                      ),
                                    ),
                                  ]),
                            ),
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
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Like ${ctrl.value}',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white54),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 190.0),
                                child: Icon(
                                  Icons.account_circle_sharp,
                                  color: Colors.white54,
                                  size: 12,
                                ),
                              ),
                              const Text(
                                'Comments 1',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white54),
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
                                      ? const Text(
                                          'Like',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        )
                                      : const Text(
                                          'Unlike',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        )),
                              TextButton(
                                  onPressed: () {
                                    Get.to(CommentPage());
                                  },
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
                                          leading:
                                              const Icon(Icons.account_circle),
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
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: Colors.white10,
                            thickness: 2,
                          )
                        ],
                      );
                    }),
              ),
            ],
          ));
    });
  }
}
