import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/filtr.dart';

import '../controller/search_controller.dart';
import 'create_play.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController tc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPageController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Search users'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  controller: tc,
                  onChanged: (val) {
                    if (val.isEmpty) {
                      ctrl.list;
                      ctrl.searchList(tc.text);
                      ctrl.update();
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search user',
                    border: InputBorder.none,
                  ),
                ),
              ),
              // TextButton(
              //     onPressed: () {
              //       ctrl.searchList(tc.text);
              //     },
              //     child: const Text(
              //       'Search',
              //       style: TextStyle(color: Colors.blue),
              //     )),
            ]),
            Expanded(
                child: ListView.builder(
                    itemCount: ctrl.list.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(ctrl.list[index]['image']),
                        ),
                        title: Text(ctrl.list[index]['name']),
                        subtitle: Text(ctrl.list[index]['name']),
                        trailing: TextButton(
                          onPressed:(){
                            setState(() {
                              ctrl.list[index]['isFollow'] = !ctrl.list[index]['isFollow'];
                            });
                          },
                          child:ctrl.list[index]['isFollow'] ? Text('Follow'):const Text('Unfollow') ,)
                      );
                    }))
          ],
        ),
      );
    });
  }

  // List<String> data = ['Cars', 'Bikes', 'Trucks'];
  // List<String> dumy = [];
  // @override
  // void initState() {
  //   dumyList = data;
  // }
  // void FiterList(String value) {
  //   setState(() {
  //     dummyList = data
  //         .where((e) =>
  //             e.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }
}
