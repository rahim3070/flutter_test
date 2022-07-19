import 'package:flutter/material.dart';

void main() {
  runApp(const ChangeAppIconAppNameW());
}

class ChangeAppIconAppNameW extends StatelessWidget {
  const ChangeAppIconAppNameW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Change App Icon & AppName"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: const Center(
            child: Text("This is my first app.",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
