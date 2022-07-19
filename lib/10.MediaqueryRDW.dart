import 'package:flutter/material.dart';

void main() {
  runApp(const MediaqueryRDW());
}

class MediaqueryRDW extends StatelessWidget {
  const MediaqueryRDW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 3;
    var width = MediaQuery.of(context).size.width / 2;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Mediaquery for Responsive Design"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Center(
                child: Text(
                  "Hello World",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
