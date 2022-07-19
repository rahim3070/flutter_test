import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '19.BottomNav1.dart';
import '19.BottomNav2.dart';
import '19.BottomNav3.dart';
import '19.BottomNav4.dart';

void main() {
  runApp(const CurvedNavBarW());
}

class CurvedNavBarW extends StatefulWidget {
  const CurvedNavBarW({Key? key}) : super(key: key);

  @override
  State<CurvedNavBarW> createState() => _CurvedNavBarWState();
}

class _CurvedNavBarWState extends State<CurvedNavBarW> {
  var _page = 0;
  final pages = [
    const BottomNav1(),
    const BottomNav2(),
    const BottomNav3(),
    const BottomNav4(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.blue,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            items: const [
              Icon(Icons.access_alarm),
              Icon(Icons.ac_unit),
              Icon(Icons.accessibility),
              Icon(Icons.add_call),
            ],
          ),
          appBar: AppBar(
            title: const Text("Curved Nav Bar"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: pages[_page],
        ),
      ),
    );
  }
}
