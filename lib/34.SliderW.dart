import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const SliderW());
}

class SliderW extends StatelessWidget {
  const SliderW({Key? key}) : super(key: key);

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
  var _value = 10.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Slider"),
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
              Text("Md. Abdur Rahim",style: TextStyle(fontSize: _value),),
              const SizedBox(height: 50,),
              Slider(
                min: 10,
                max: 50,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    // print(_value);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
