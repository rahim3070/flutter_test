import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

void main() {
  runApp(const SharedPreferencesW());
}

class SharedPreferencesW extends StatelessWidget {
  const SharedPreferencesW({Key? key}) : super(key: key);

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
  int counter = 0;

  loadCounters() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      counter = pref.getInt("counter") ?? 0;
    });
  }

  increment() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
  }

  @override
  void initState() {
    loadCounters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Shared Preferences"),
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
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
