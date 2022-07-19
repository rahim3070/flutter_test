import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const TransformW());
}

class TransformW extends StatelessWidget {
  const TransformW({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Transform"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Transform Rotate",style: TextStyle(fontSize: 30),),
                const SizedBox(height: 40,),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 40,),
                const Text("Transform Scale",style: TextStyle(fontSize: 30),),
                const SizedBox(height: 40,),
                Transform.scale(
                  scale: 1.5,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 40,),
                const Text("Transform Translate",style: TextStyle(fontSize: 30),),
                const SizedBox(height: 40,),
                Transform.translate(
                  offset: const Offset(50, 10),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
