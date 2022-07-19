import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const SwitchW());
}

class SwitchW extends StatelessWidget {
  const SwitchW({Key? key}) : super(key: key);

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
        appBar: AppBar(
          title: const Text("Switch"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        backgroundColor: _value == false ? Colors.red : Colors.blueGrey,
        body: Center(
          child: Switch(
            value: _value,
            onChanged: (val) {
              setState(() {
                _value = val;
                print(_value);
              });
            },
          ),
        ),
      ),
    );
  }
}
