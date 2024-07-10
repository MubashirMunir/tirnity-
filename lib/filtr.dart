import 'package:flutter/material.dart';

class filter extends StatefulWidget {
  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  TextEditingController tc = TextEditingController();
  List<Map<String, dynamic>> alluser = [
    {"id": 1, "name": 'Mubashir', 'age': 29},
    {"id": 2, "name": 'zafar', 'age': 12},
    {"id": 3, "name": 'zahooor', 'age': 23},
    {"id": 4, "name": 'Nadeem', 'age': 34},
    {"id": 5, "name": 'Faisal', 'age': 56},
  ];
  List<Map<String, dynamic>> found = [];
  @override
  void initState() {
    found = alluser;
    setState(() {
      found = result;
    });
  }

  List<Map<String, dynamic>> result = [];
  // void search(String word) {
  //   if (word.isEmpty) {
  //     result = alluser;
  //   } else if (word.isNotEmpty) {
  //     result = alluser
  //         .where((e) =>
  //             e["name"].toString().toLowerCase().contains(word.toLowerCase()))
  //         .toList();
  //   } else {
  //     print('found');
  //   }
  //   setState(() {
  //     found = result;
  //   });
  // }
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextField(
          onChanged: (String? value) {
            setState(() {
              search = value!.toString();
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              String pos = index.toString();
              if (tc.text.isEmpty) {
                return const ListTile(
                  title: Text('Hellow flutter developer'),
                  subtitle: Text('23'),
                );
              } else if (pos.toLowerCase().contains(tc.text.toLowerCase())) {
                return ListTile(
                  title: Text('Hellow flutter developer' + pos),
                  subtitle: Text('23'),
                );
              } else {
                const CircularProgressIndicator();
              }
            },
          ),
        ),
      ]),
    ));
  }
}
