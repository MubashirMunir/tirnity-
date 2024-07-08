import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_play.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textEditingController = TextEditingController();

  List<String> data = ['Cars', 'Bikes', 'Trucks'];
  List<String> dummyList = [];
  @override
  void initState() {
    dummyList = data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Videos'),
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
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
                // onChanged: (String valu) {
                //   FiterList(valu);
                // },
              ),
            ),
            TextButton(
                onPressed: () {
                  FiterList(textEditingController.text);
                },
                child: const Text(
                  'Search',
                  style: TextStyle(color: Colors.blue),
                )),
          ]),
          Expanded(
              child: ListView.builder(
                  itemCount: dummyList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () => Get.to(CreatePlay()),
                      title: Text(dummyList[index].toString()),
                      subtitle: const Text('Vehicle'),
                      trailing: IconButton(
                          onPressed: () {
                            dummyList.removeAt(index);
                          },
                          icon: const Icon(
                            Icons.dangerous_outlined,
                            size: 14,
                          )),
                    );
                  }))
        ],
      ),
    );
  }

  void FiterList(String value) {
    setState(() {
      dummyList = data
          .where((_element) =>
              _element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
}
