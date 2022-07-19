import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const AnimatedCrossfadeW());
}

class AnimatedCrossfadeW extends StatelessWidget {
  const AnimatedCrossfadeW({Key? key}) : super(key: key);

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
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ac_unit),
          onPressed: () {
            setState(() {
              check = true;
            });
          },
        ),
        appBar: AppBar(
          title: const Text("Animated Crossfade"),
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
              AnimatedCrossFade(
                  firstChild: Container(
                    height: 200,
                    width: 150,
                    color: Colors.teal,
                    child: RaisedButton(
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text('Click Here'),
                      ),
                      onPressed: () {
                        setState(() {
                          check = false;
                        });
                      },
                    ),
                  ),
                  secondChild: const Center(
                      child: Text(
                    "Great",
                    style: TextStyle(fontSize: 40),
                  )),
                  crossFadeState: check
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 1)),
            ],
          ),
        ),
      ),
    );
  }
}
