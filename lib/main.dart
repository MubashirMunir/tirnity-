import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controller/post_controller.dart';
import 'controller/add_new_post.dart';
import 'controller/add_video_controller.dart';
import 'controller/complain_controller.dart';
import 'controller/create_playe_controller.dart';
import 'controller/edit_video_controller.dart';
import 'controller/home_controller.dart';
import 'controller/landing_page.dart';
import 'controller/playing_controller.dart';
import 'controller/reels_controller.dart';
import 'controller/report_page.dart';
import 'controller/search_controller.dart';
import 'controller/video_controller.dart';
import 'pages/bottom_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  Get.put(AddNewPostController());
  Get.put(AddVideoController());
  Get.put(PostController());
  Get.put(CreatePlayeController());
  Get.put(SearchPageController());
  Get.put(ReelsController());
  Get.put(HomeController());
  Get.put(ComplainController());
  Get.put(VideoController());
  Get.put(PlayingController());
  Get.put(LandingPageController());
  Get.put(ReportPageController());
  Get.put(EditVideoScreenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        // useMaterial3: true,
      ),
      home: LandingPage(),
    );
  }
}
