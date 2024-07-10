import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

Widget commentChild(data) {
  return ListView(
    children: [
      for (var i = 0; i < data.length; i++)
        Padding(
          padding: const EdgeInsets.all(4),
          child: ListTile(
            leading: GestureDetector(
              onTap: () async {},
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: CommentBox.commentImageParser(
                        imageURLorPath: data[i]['pic'])),
              ),
            ),
            title: Text(
              data[i]['name'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(data[i]['message']),
            trailing:
                Text(data[i]['date'], style: const TextStyle(fontSize: 10)),
          ),
        )
    ],
  );
}
