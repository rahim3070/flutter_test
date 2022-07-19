import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnRowW());
}

class ColumnRowW extends StatelessWidget {
  const ColumnRowW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Column & Row"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  // width: 150,
                  color: Colors.amber,
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(12.0),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green),
                          child: const Text(
                            "Vue Js",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green),
                          child: const Text(
                            "Flutter",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(12.0),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green),
                          child: const Text(
                            "MySQL",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 25),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // height: 100,
                  width: 150,
                  color: Colors.green,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(20.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: const Text(
                            "Vue Js",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: const Text(
                            "Flutter",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: const Text(
                            "MySQL",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 20),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
