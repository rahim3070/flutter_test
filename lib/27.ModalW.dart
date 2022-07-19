import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const ModalW());
}

class ModalW extends StatelessWidget {
  const ModalW({Key? key}) : super(key: key);

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
          title: const Text("Modal Bottom Sheet"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: RaisedButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return SizedBox(
                height: 250,
                child: Column(
                  children: const <Widget>[
                    ListTile(
                      title: Text("One"),
                      subtitle: Text("This is One"),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text("Two"),
                      subtitle: Text("This is Two"),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text("Three"),
                      subtitle: Text("This is Three"),
                      trailing: Icon(Icons.access_alarm),
                    ),
                  ],
                ),
              );
            });
          },
          child: const Text("Click"),),
        ),
      ),
    );
  }
}