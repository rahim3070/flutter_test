import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const ExpansionTileW());
}

class ExpansionTileW extends StatelessWidget {
  const ExpansionTileW({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ExpansionTile(
                title: const Text("One"),
                subtitle: const Text("This is One"),
                leading: const Icon(Icons.access_time),
                trailing: const Icon(Icons.arrow_downward),
                children: <Widget>[
                  Container(
                    height: 200,
                    color: Colors.purple,
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text("Two"),
                subtitle: const Text("This is Two"),
                leading: const Icon(Icons.access_time),
                trailing: const Icon(Icons.arrow_downward),
                children: <Widget>[
                  Container(
                    height: 200,
                    color: Colors.purple,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
