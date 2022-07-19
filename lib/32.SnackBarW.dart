import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const SnackBarW());
}

class SnackBarW extends StatelessWidget {
  const SnackBarW({Key? key}) : super(key: key);

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
          title: const Text("Snack Bar"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Builder(
            builder: (BuildContext con) {
              return RaisedButton(
                onPressed: () {
                  Scaffold.of(con).showSnackBar(SnackBar(
                    content: const Text("I am Snack Bar"),
                    duration: const Duration(seconds: 10),
                    action: SnackBarAction(
                      label: "OK",
                      onPressed: () {},
                    ),
                  ));
                },
                child: const Text("Click"),
              );
            },
          ),
        ),
      ),
    );
  }
}
