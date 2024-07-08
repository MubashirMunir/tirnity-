import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reels_viewer/reels_viewer.dart';

import '../controller/reels_controller.dart';
import 'search_page.dart';

class Reels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReelsController>(builder: (ctrl) {
      return Stack(
        fit: StackFit.expand,
        children: [
          ReelsViewer(
            reelsList: ctrl.reelsList,
            onShare: (url) {
              log('Shared reel url ==> $url');
            },
            onLike: (url) {
              ctrl.redHeart();
              // log('Liked reel url ==> $url');
              print(url);
            },
            onFollow: () {
              log('======> Clicked on follow <======');
            },
            onComment: (comment) {
              log('Comment on reel ==> $comment');
            },
            onClickMoreBtn: () {
              log('======> Clicked on more option <======');
            },
            onClickBackArrow: () {
              log('======> Clicked on back arrow <======');
            },
            onIndexChanged: (index) {
              log('======> Current Index ======> $index <========');
            },
            showProgressIndicator: true,
            showVerifiedTick: true,
            showAppbar: false,
          ),
          Positioned(
              right: 60,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                  ))),
          Positioned(
              right: 10,
              child: IconButton(
                  onPressed: () {
                    Get.to(SearchPage());
                  },
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ))),
          Positioned(
              top: 90,
              right: 10,
              child: IconButton(
                  onPressed: () {
                    ctrl.tOgle();
                    // setState(() {});
                  },
                  icon: ctrl.ok
                      ? const Icon(
                          Icons.volume_off,
                          color: Colors.white,
                        )
                      : const Icon(Icons.volume_up_outlined,
                          color: Colors.white))),
        ],
      );
    });
  }
}
