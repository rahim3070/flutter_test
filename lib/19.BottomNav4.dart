import 'package:flutter/material.dart';

void main() {
  runApp(const BottomNav4());
}

class BottomNav4 extends StatelessWidget {
  const BottomNav4({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.tealAccent,
        child: const SafeArea(
          // For Display in Screen
          child: Scaffold(
            backgroundColor: Colors.tealAccent,
            body: Center(
              child: Text("Bottom Nav 4",
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
