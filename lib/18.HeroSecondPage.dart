import 'package:flutter/material.dart';

void main() {
  runApp(const HeroSecondPage());
}

class HeroSecondPage extends StatelessWidget {
  const HeroSecondPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Hero Second Page"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: const Center(
            child: Hero(
              tag: "Add",
              child: Icon(
                Icons.add_a_photo,
                size: 250,
                color: Colors.greenAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
