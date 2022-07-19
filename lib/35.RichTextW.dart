import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const RichTextW());
}

class RichTextW extends StatelessWidget {
  const RichTextW({Key? key}) : super(key: key);

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
          title: const Text("Rich Text"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: "Don't have an account ? ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic),
              children: [
                TextSpan(
                  text: " Register",
                  style: TextStyle(fontSize: 22, color: Colors.redAccent),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
