import 'package:flutter/material.dart';

import '18.HeroSecondPage.dart';
import 'main.dart';

void main() {
  runApp(const HeroW());
}

class HeroW extends StatelessWidget {
  const HeroW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hero"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: const Hero(
                tag: "Add",
                child: Icon(
                  Icons.add_a_photo,
                  size: 50,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HeroSecondPage()));
              },
            ),
          ),
        ),
      ),
    );
  }
}
