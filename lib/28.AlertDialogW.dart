import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const AlertDialogW());
}

class AlertDialogW extends StatelessWidget {
  const AlertDialogW({Key? key}) : super(key: key);

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
          title: const Text("Alert Dialog"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Alert"),
                      content: const Text("This is a simple alert dialog"),
                      actions: [
                        RaisedButton(child: const Text("OK"), onPressed: () {
                          Navigator.pop(context);
                        })
                      ],
                    );
                  });
            },
            child: const Text("Click"),
          ),
        ),
      ),
    );
  }
}
