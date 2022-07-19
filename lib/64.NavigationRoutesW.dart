import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationRoutesW());
}

class NavigationRoutesW extends StatelessWidget {
  const NavigationRoutesW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Navigation Routes"),
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
