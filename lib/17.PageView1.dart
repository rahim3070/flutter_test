import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  const PageView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.orangeAccent),
      child: const Center(
        child: Text(
          "Page View 1",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
