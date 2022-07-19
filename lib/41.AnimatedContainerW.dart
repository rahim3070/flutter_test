import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const AnimatedContainerW());
}

class AnimatedContainerW extends StatelessWidget {
  const AnimatedContainerW({Key? key}) : super(key: key);

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
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ac_unit),
          onPressed: () {
            setState(() {
              _value =! _value;
            });
          },
        ),
        appBar: AppBar(
          title: const Text("Animated Container"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: AnimatedContainer(
            height: _value == false ? 150 : 350,
            width: _value == false ? 150 : 300,
            color: Colors.purple,
            duration: const Duration(seconds: 4),
          ),
        ),
      ),
    );
  }
}
