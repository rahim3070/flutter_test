import 'package:flutter/material.dart';

class PassData extends StatelessWidget {
  String receivedName;

  PassData({Key? key, required this.receivedName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Receive Data"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Container(
            decoration: const BoxDecoration(color: Colors.orangeAccent),
            child: Center(
              child: Text(
                // widget.receivedName, // For Stateful Widget
                receivedName,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
