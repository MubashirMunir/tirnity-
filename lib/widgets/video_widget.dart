import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  VideoWidget({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows1200_5ea7d3e1ba5f2.jpeg',
          fit: BoxFit.fill,
        ),
        Row(children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                'https://cdn.dribbble.com/users/3002151/screenshots/15132708/media/7bbc6058bff2d6088899014aa123d6cc.jpg?resize=1000x750&vertical=center'),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Text(name),
                const SizedBox(
                  width: 2,
                ),
                const Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 14,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "1 W",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 11),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text('Cant wait for things to below !!!'),
            )
          ]),
          const SizedBox(
            width: 60,
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_outlined),
            onPressed: () {},
          ),
        ]),
      ],
    );
  }
}
