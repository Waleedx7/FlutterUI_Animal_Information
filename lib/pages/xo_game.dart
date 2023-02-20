import 'package:flutter/material.dart';

class XOPage extends StatelessWidget {
  XOPage({super.key});

  final textController = TextEditingController(text: "Write here");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    controller: textController,
                    decoration:
                        InputDecoration(prefixIcon: Icon(Icons.favorite)),
                  )),
              ElevatedButton(
                  onPressed: () {
                    print(textController.text);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Your Text is ${textController.text}")));
                  },
                  child: Text('Print Here')),
              for (int j = 0; j < 3; j++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++)
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 100,
                        height: 100,
                        color: Colors.grey,
                        child: Text("X"),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
