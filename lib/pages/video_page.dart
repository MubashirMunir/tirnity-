import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/video_controller.dart';
import '../widgets/video_widget.dart';
import 'playing_page.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Beta'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],

        ),

        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ForYou'),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Music')),
            ElevatedButton(onPressed: () {}, child: const Text('News')),
            ElevatedButton(onPressed: () {}, child: const Text('Blogs'))
          ]),
          Expanded(
            child: ListView.builder(
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      child: VideoWidget(
                        name: 'xavier',
                      ),
                      onTap: () {
                        Get.to(PlayingPage());
                      });
                }),
          )
        ]),
      );
    });
  }
}
