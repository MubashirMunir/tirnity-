import 'package:flutter/material.dart';
import 'package:todo/pages/comment_page.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key, required this.name, required this.image, required this.comment});
  final String name;
  final String image;
  final String comment;


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
      appBar: AppBar(title: Text("Trinity",style: TextStyle(fontWeight: FontWeight.bold),),
      bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.black,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              // Creates border
              color: Colors.greenAccent),
          tabs: const [
            Text(
              'For You',
              style: TextStyle(color: Colors.white),
            ),
            Text('Music', style: TextStyle(color: Colors.white)),
            Text('News', style: TextStyle(color: Colors.white)),
            Text('Blogs', style: TextStyle(color: Colors.white)),
          ]),
        ),
          body:  TabBarView(physics: const BouncingScrollPhysics(), children: [
    Column(children: [
      ListTile(
        onTap: ()=>
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  CommentPage())),

        subtitle: Text(comment),
        title: Text(name),
      leading: CircleAvatar(backgroundImage: NetworkImage(image),
      ),
      )
    ],
        ),

    ])
        )
    );
  }
}
