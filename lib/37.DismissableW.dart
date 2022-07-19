import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const DismissableW());
}

class DismissableW extends StatelessWidget {
  const DismissableW({Key? key}) : super(key: key);

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
          title: const Text("Dismissable"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Dismissible(
            key: const ValueKey("ARR"),
            secondaryBackground: Container(
              color: Colors.redAccent,
              child: const Icon(
                Icons.delete,
                size: 40,
              ),
            ),
            background: Container(
              color: Colors.blue,
              child: const Icon(
                Icons.delete,
                size: 40,
              ),
            ),
            child: const ListTile(
              title: Text("Easy Explanation"),
              subtitle: Text("I love my Country."),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
        ),
      ),
    );
  }
}
