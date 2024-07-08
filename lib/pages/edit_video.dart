import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/edit_video_controller.dart';

class EditVideoScreen extends StatelessWidget {
  const EditVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    GetBuilder<EditVideoScreenController>(builder:(ctrl){
    return Scaffold(appBar: AppBar(title: const Text('Edit Video'),centerTitle: true,),
    body: Column(
      children: [
        Row(
          children: [
           Column(
             children: [
             Padding(
               padding: const EdgeInsets.only(right: 120.0),
               child: Text('Description',style: TextStyle(fontWeight: FontWeight.bold),),
             ),
            Container(width: 200,
              child: const TextField(maxLines: 3,
                decoration: InputDecoration(
                     border: InputBorder.none,
                  hintText: (" What,s on your mind ?"),),),
            )
                     ],),
          SizedBox(width: 60,),
            ClipRRect(
         child: Container(
           height: 200,
             child: Image.network(ctrl.url,),


          ))
        ],),
        SizedBox.fromSize(size: Size.fromHeight(40),),
        Divider(color: Colors.black26,)

      // TextButton(
      //   onPressed: () {ctrl.play();},
      //   child:Icon(ctrl.controller.value.isPlaying ? Icons.pause : Icons.play_arrow,),
      // ),
    ],),
    );
  });
  }
}
