import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {

  @override
  _CommentPageState createState() => _CommentPageState();
}
class _CommentPageState extends State<CommentPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List comment = [
    {
      'name': 'Chuks Okwuenu',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code',
      'date': '2021-01-01 12:00:00'
    },
  ];
  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {},
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration:  const BoxDecoration(
                      color: Colors.blue,
                      borderRadius:  BorderRadius.all(Radius.circular(50))),
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
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment"),

      ),
      body: Container(
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "https://img.freepik.com/free-psd/letter-t-with-red-yellow-background_314999-2010.jpg?size=626&ext=jpg"),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'User',
                  'pic': 'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                  'message': commentController.text,
                  'date': ''
                };
                comment.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
          child: commentChild(comment),
        ),
      ),
    );
  }
}