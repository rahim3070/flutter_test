import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const CustomDialogW());
}

class CustomDialogW extends StatelessWidget {
  const CustomDialogW({Key? key}) : super(key: key);

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
          title: const Text("Custom Alert Dialog"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          SizedBox(
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  SizedBox(height: 50,),
                                  Text(
                                    "Alert Dialog",
                                    style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 23,
                                        color: Color(0xff070707)),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "This is a custom Alert Dialog",
                                    style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontSize: 18,
                                        color: Color(0xff070707)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                          top: -50,
                          child: CircleAvatar(
                            radius: 50,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(50)),
                                child: Image.asset("images/ammc.jpg")),
                          )),
                        ],
                      ),
                    );
                  });
            },
            child: const Text("Click"),
          ),
        ),
      ),
    );
  }
}
