import 'package:flutter/material.dart';

void main() {
  runApp(const BottomNav3());
}

class BottomNav3 extends StatelessWidget {
  const BottomNav3({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.orangeAccent,
        child: const SafeArea(
          // For Display in Screen
          child: Scaffold(
            backgroundColor: Colors.orangeAccent,
            body: Center(
              child: Text("Bottom Nav 3",
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
