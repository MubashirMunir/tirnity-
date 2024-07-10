import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:image_picker/image_picker.dart';

class AddNewPostController extends GetxController {
  RxString imagePath = "".obs;
  // File? _image;
  final ImagePicker _picker = ImagePicker();

  Future getImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
