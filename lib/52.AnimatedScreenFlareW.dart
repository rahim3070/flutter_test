import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import '17.PageView1.dart';
import 'main.dart';

void main() {
  runApp(const AnimatedScreenFlareW());
}

class AnimatedScreenFlareW extends StatelessWidget {
  const AnimatedScreenFlareW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const PageView1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Animated Screen Flare"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.animation),
          onPressed: () {
            setState(() {
              value = !value;
            });
          },
        ),
        body: Center(
          child: FlareActor(
            "animation/Resizing House.flr",
            alignment: Alignment.center,
            fit: BoxFit.cover,
            animation: value == false ? "Demo Mode" : "Sun Rotate",
          ),
        ),
      ),
    );
  }
}
