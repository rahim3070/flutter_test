import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const DropdownButtonW());
}

class DropdownButtonW extends StatelessWidget {
  const DropdownButtonW({Key? key}) : super(key: key);

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
  var selected = "Please Select ...";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dropdown Button"),
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
            children: <Widget>[
              Text(
                selected,
                style: const TextStyle(fontSize: 30),
              ),
              DropdownButton(
                iconSize: 60,
                items: const [
                  DropdownMenuItem(
                    value: "One",
                    child: Text("One"),
                  ),
                  DropdownMenuItem(
                    value: "Two",
                    child: Text("Two"),
                  ),
                  DropdownMenuItem(
                    value: "Three",
                    child: Text("Three"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selected = value as String;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
