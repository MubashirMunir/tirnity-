import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  const SendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(8),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tip User"),
        ),
        body: Column(children: [
          Row(
            children: [
              const CircleAvatar(
                  maxRadius: 14, backgroundImage: AssetImage("assets/t.png")),
              const SizedBox(
                width: 4,
              ),
              const Text("trinity"),
              const SizedBox(
                width: 2,
              ),
              const Icon(
                Icons.verified,
                color: Colors.blue,
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  height: 37,
                  width: 70,
                  child: const Center(
                    child: Text(
                      "Send",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tip amount \$",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "Your balance \$ 0.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            height: 45,
            width: MediaQuery.of(context).size.height * 1,
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Tip",
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 210.0),
            child: Text(
              "Reload your balance",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Warning ! once your tin is submitted, it cannot be reversed verify the tip amount before you submit in case of suspected fraud or unauthroized tips ,promptly contact us",
            style: TextStyle(fontSize: 12, color: Colors.white38),
          ),
        ]),
      ),
    );
  }
}
