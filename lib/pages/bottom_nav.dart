import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/pages/reels_page.dart';
import 'package:todo/pages/search_page.dart';
import 'package:todo/pages/settings_page.dart';

import '../controller/landing_page.dart';
import 'home_page.dart';
import 'video_page.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  LandingPage({super.key});

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            elevation: 5,
            fixedColor: Colors.blue,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: landingPageController.changeTabIndex,
              currentIndex: landingPageController.tabIndex.value,
              // backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              // backgroundColor: Colors.black,
              unselectedItemColor: Colors.white54,
              // selectedItemColor: Colors.white,
              unselectedLabelStyle: unselectedLabelStyle,
              selectedLabelStyle: selectedLabelStyle,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.home,
                      size: 14.0,
                    ),
                  ),
                  label: 'Feed',

                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.search,
                      size: 14.0,
                    ),
                  ),
                  label: 'Video',
                  // backgroundColor: Colors.white,
                ),
               const BottomNavigationBarItem(

                  icon:  Icon(
                      Icons.play_arrow,
                      size: 14.0,
                    ),
                  label: 'Play',


                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.search,
                      size: 14.0,
                    ),
                  ),
                  label: 'Search',

                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Icon(
                      Icons.person_off_outlined,
                      size: 14.0,
                    ),
                  ),
                  label: 'Home',

                )
              ]),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              HomePage(),
              VideoPage(),
              Reels(),
              SearchPage(),
              SettingsPage(),
            ],
          )),
    ));
  }
}
