import 'package:flutter/material.dart';
import '19.BottomNav1.dart';
import '19.BottomNav2.dart';
import '19.BottomNav3.dart';
import '19.BottomNav4.dart';

import 'main.dart';

void main() {
  runApp(const BottomNavBarW());
}

class BottomNavBarW extends StatelessWidget {
  const BottomNavBarW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentIndex = 0;
  final pages = [
    const BottomNav1(),
    const BottomNav2(),
    const BottomNav3(),
    const BottomNav4(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Nav Bar"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.message),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Call",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool),
              label: "Pan Tool",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radio),
              label: "Radio",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: pages[_currentIndex],
      ),
    );
  }
}
