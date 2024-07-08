import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/playing_controller.dart';
import '../widgets/video_widget.dart';
import 'report_page.dart';

class PlayingPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController commentController = TextEditingController();
  List comment = [
    {
      'name': 'Chuks Okwuenu',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code',
      'date': '2021-01-01 12:00:00'
    },
  ];

  PlayingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlayingController>(builder: (ctrl) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Playing'),
          ),
          body: SingleChildScrollView(
              child: Column(children: [
            VideoWidget(name: 'Xavier'),
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
           const SizedBox(height: 230,),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child:  CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-vector/gradient-t-logo-template_23-2149372726.jpg?size=338&ext=jpg&ga=GA1.1.2116175301.1719273600&semt=ais_user'),
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
          ])));
    });
  }
}
