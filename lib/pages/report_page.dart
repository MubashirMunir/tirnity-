import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/report_page.dart';
import 'complain.dart';

class ReportPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReportPageController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Report Video'),
        ),
        body: Column(children: [
          const Text(
            "Why are You reporting ?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your report remains anonymous unless you are reporting to an intellectual property infringement. In cases of any immediate damage please contact local service center near to you',
              style: TextStyle(color: Colors.blueGrey, fontSize: 13.5),
            ),
          ),
          Divider(color: Colors.black12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  title: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('I just don,t like it'),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () => Get.to(ComplainPage()),
                  )),
              Divider(color: Colors.black12),
              ListTile(
                  title: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('It,s spam'),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () => Get.to(
                      ComplainPage(),
                    ),
                  )),
              const Divider(color: Colors.black12),
              ListTile(
                title: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Nudity or sexual')),
                trailing: IconButton(
                    onPressed: () => Get.to(
                          ComplainPage(),
                        ),
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
              const Divider(color: Colors.black12),
              ListTile(
                title: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Hate speech & symbols')),
                trailing: IconButton(
                    onPressed: () => Get.to(
                          ComplainPage(),
                        ),
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
              const Divider(color: Colors.black12),
              ListTile(
                  title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('I just don,t like it')),
                  trailing: IconButton(
                      onPressed: () => Get.to(
                            ComplainPage(),
                          ),
                      icon: const Icon(Icons.arrow_forward_ios))),
              const Divider(color: Colors.black12),
              ListTile(
                title: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('I just don,t like it')),
                trailing: IconButton(
                    onPressed: () => Get.to(
                          ComplainPage(),
                        ),
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
              const Divider(color: Colors.black12),
              ListTile(
                title: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('I just don,t like it')),
                trailing: IconButton(
                    onPressed: () => Get.to(
                          ComplainPage(),
                        ),
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
              const Divider(color: Colors.black12),
            ],
          )
        ]),
      );
    });
  }
}
