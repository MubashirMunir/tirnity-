import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controller/video_controller.dart';
import '../widgets/video_widget.dart';
import 'playing_page.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(builder: (ctrl) {
      return DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Beta'),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              ],
              bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.black,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      // Creates border
                      color: Colors.greenAccent),
                  tabs: const [
                    Text(
                      'For You',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('Music', style: TextStyle(color: Colors.white)),
                    Text('News', style: TextStyle(color: Colors.white)),
                    Text('Blogs', style: TextStyle(color: Colors.white)),
                  ]),
            ),
            body: TabBarView(physics: const BouncingScrollPhysics(), children: [
              Column(children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: ctrl.list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                            child: Column(
                              children: [
                                Image.network(
                                  ctrl.list[index]['Singer'],
                                  fit: BoxFit.fill,
                                ),
                                Row(children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        NetworkImage(ctrl.list[index]["image"]),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 3,
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
                                              width: 5,
                                            ),
                                            const Text(
                                              "1 W",
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 11),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                              'Cant wait for things to below !!!'),
                                        )
                                      ]),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.more_vert_outlined),
                                    onPressed: () {},
                                  ),
                                ]),
                              ],
                            ),
                            onTap: () {
                              Get.to(PlayingPage(
                                name: ctrl.list[index]['name'],
                                image: ctrl.list[index]["Singer"],
                                logoImage: ctrl.list[index]["image"],
                              ));
                            });
                      }),
                )
              ]),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.blue,
              )
            ]),
          ));
    });
  }
}
