import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerW());
}

class ContainerW extends StatelessWidget {
  const ContainerW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Container"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: Container(
              height: 200,
              width: 300,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Text("I Love Coding",style: TextStyle(fontSize: 30),),
            ),
          ),
        ),
      ),
    );
  }
}
