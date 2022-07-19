import 'package:flutter/material.dart';

void main() {
  runApp(const BottomNav1());
}

class BottomNav1 extends StatelessWidget {
  const BottomNav1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.grey,
        child: const SafeArea(
          // For Display in Screen
          child: Scaffold(
            backgroundColor: Colors.grey,
            body: Center(
              child: Text("Bottom Nav 1",
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
