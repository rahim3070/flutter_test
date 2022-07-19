import 'package:flutter/material.dart';

void main() {
  runApp(const BottomNav2());
}

class BottomNav2 extends StatelessWidget {
  const BottomNav2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.brown,
        child: const SafeArea(
          // For Display in Screen
          child: Scaffold(
            backgroundColor: Colors.brown,
            body: Center(
              child: Text("Bottom Nav 2",
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    );
  }
}
