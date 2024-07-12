import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/search_controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                  controller: ctrl.tc,
                  onChanged: (val) {
                    // if (val.isEmpty) {
                    //   ctrl.filtered;
                    ctrl.searchFromJson(val);
                    ctrl.update();
                    // }
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
                    itemCount: ctrl.filtered.length,
                    itemBuilder: (context, index) {
                      if (ctrl.filtered.isEmpty) {
                        const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  ctrl.filtered[index]['thumbnail_url']),
                            ),
                            title: Text(ctrl.filtered[index]['title']),
                            subtitle: Text(ctrl.filtered[index]['artist']),
                            trailing: TextButton(
                              onPressed: () {
                                ctrl.list[index]['isFollow'] =
                                    !ctrl.list[index]['isFollow'];
                                ctrl.update();
                              },
                              child: ctrl.list[index]['isFollow']
                                  ? const Text('Follow')
                                  : const Text('Unfollow'),
                            ));
                      }
                    }))
          ],
        ),
      );
    });
  }
}
