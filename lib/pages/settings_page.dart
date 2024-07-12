import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/setting_page_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsPageController>(builder: (ctrl){
    return Scaffold(appBar: AppBar(title:  const Text('Settings'),),
    body: Column(
      children: [
        Expanded(child: ListView.builder(
            itemCount: ctrl.list.length,
            itemBuilder: (context,index){
          return ListTile(
            onTap: (){},
             title: Text(ctrl.list[index]["Label"],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
           subtitle:  Text(ctrl.list[index]["subtitle"],style: const TextStyle(color: Colors.white54),),
            leading: CircleAvatar(

              backgroundImage: NetworkImage(ctrl.list[index]['icon']),maxRadius: 15,backgroundColor: Colors.white,),
              );
        }),),
      ],
    ),
    );
  });
  }
}
