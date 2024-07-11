import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controller/home_controller.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    GetBuilder<HomeController>(builder: (ctrl){
    return Scaffold(
      appBar: AppBar(title:const Text("Notification"),),
      body: Expanded(child: ListView.builder(
          itemCount: ctrl.list.length ,
          itemBuilder: (context,index){
             return ListTile(onTap: (){ctrl.list.removeAt(index);},
               trailing: Text(ctrl.list[index]["time"]),
               subtitle: Text(ctrl.list[index]["comment"]),
               leading: CircleAvatar(backgroundImage: NetworkImage(ctrl.list[index]["image"])),
               title: Text(ctrl.list[index]["name"]),);
               
      },),
    )
    );

  }
    );}}
