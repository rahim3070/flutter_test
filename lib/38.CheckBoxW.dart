import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const CheckBoxW());
}

class CheckBoxW extends StatelessWidget {
  const CheckBoxW({Key? key}) : super(key: key);

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
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Check Box"),
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
              Text(
                _value == false ? "Unchecked" : "Checked",
                style: const TextStyle(fontSize: 30),
              ),
              Checkbox(
                value: _value,
                onChanged: (bool? val) {
                  if (val != null) {
                    setState(() {
                      _value = val;
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
