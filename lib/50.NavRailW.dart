import 'package:flutter/material.dart';
import '17.PageView2.dart';
import '17.PageView3.dart';

import '17.PageView1.dart';
import 'main.dart';

void main() {
  runApp(const NavRailW());
}

class NavRailW extends StatelessWidget {
  const NavRailW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _pages = [
    const PageView1(),
    const PageView2(),
    const PageView3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Nav Rail"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              NavigationRail(
                backgroundColor: Colors.blueGrey,
                labelType: NavigationRailLabelType.all,
                minWidth: 80,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    label: Text("Call", style: TextStyle(color: Colors.white)),
                    selectedIcon: Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                    label: Text("WiFi", style: TextStyle(color: Colors.white)),
                    selectedIcon: Icon(
                      Icons.wifi,
                      color: Colors.blue,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    label:
                        Text("Message", style: TextStyle(color: Colors.white)),
                    selectedIcon: Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onDestinationSelected: (val) {
                  setState(() {
                    _selectedIndex = val;
                  });
                },
              ),
              Expanded(
                child: Container(
                  child: _pages[_selectedIndex],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
