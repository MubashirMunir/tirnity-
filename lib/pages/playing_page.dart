import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/playing_controller.dart';
import 'report_page.dart';

class PlayingPage extends StatelessWidget {
 final String name;
 final String image;
 final String logoImage;
  const PlayingPage({Key? key, required this.name, required this.image, required this.logoImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlayingController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Playing'),
          ),
          body: Column(children: [
          Column(
          children: [
          Image.network(
            image,
            fit: BoxFit.fill,
          ),
                      Row(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                logoImage,)
                       ),
           ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Text(name),
                const SizedBox(
                  width: 2,
                ),
                const Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 14,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "1 W",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 11),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text('Cant wait for things to below !!!'),
            )
          ]),

          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: IconButton(
              icon: const Icon(Icons.more_vert_outlined),
              onPressed: () {},
            ),
          ),
                      ]),
                      ],
                    ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              IconButton(
                  onPressed: () => ctrl.like(),
                  icon: ctrl.isLike
                      ? const Icon(CupertinoIcons.heart)
                      : const Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        )),
              Text(ctrl.value.toString()),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.share)),
              const Text('0'),
            ],
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: const Text('Tip')),
            ],
          ),
          Column(children: [
            IconButton(
                onPressed: () => ctrl.favourite(),
                icon: ctrl.fav
                    ? const Icon(CupertinoIcons.heart)
                    : const Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.red,
                      )),
            const Text('favourite'),
          ]),
          Column(children: [
            IconButton(
                onPressed: () => Get.to(ReportPage()),
                icon: const Icon(Icons.report_gmailerrorred)),
            const Text('Report'),
          ])
                      ]),
                      // CommentPage()
                      const Padding(
          padding: EdgeInsets.only(right: 220,top: 10),
          child: Text('Comments'),
                      ),
                    Spacer(),
                      Row(children: [
           Padding(
            padding: EdgeInsets.only(left: 40),
            child:  CircleAvatar(
              backgroundImage: NetworkImage(logoImage),
            ),
          ),
          Container(
            height: 34,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 10,),
              child: TextField(
                  controller: ctrl.tc,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: ' Comment..',
                      hintStyle: TextStyle(fontSize: 14))),
            ),
          ),
          IconButton(
              onPressed: () {
                ctrl.comment.add(ctrl.tc.toString());
              },
              icon: const Icon(
                Icons.send,
                color: Colors.blue,
              )),
                      ])
                    ]));
    });
  }
}
