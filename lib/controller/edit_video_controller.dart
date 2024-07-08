import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class EditVideoScreenController extends GetxController{
  late VideoPlayerController controller=VideoPlayerController.networkUrl(Uri.parse('https://www.example.com/video.mp4'));
String url ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV6rzuLas-4KS8E5Axf8cy2dn3lBm3TJII7A&s";
  bool playButton =true;

  void play() {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    update();
  }

}