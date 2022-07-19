import 'package:flutter/material.dart';

void main() {
  runApp(const CardGridviewW());
}

class CardGridviewW extends StatelessWidget {
  const CardGridviewW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Card & Gridview"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text("Border Radius All",
                            style: TextStyle(fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.blueAccent,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: SizedBox(
                            height: 135,
                            width: 150,
                            child: Center(
                              child: Text(
                                "I Love Coding",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(color: Colors.amber),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text("Border Radius Only",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            color: Colors.grey,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20)),
                            ),
                            child: SizedBox(
                              height: 130,
                              width: 150,
                              child: Center(
                                child: Text(
                                  "I Love Coding",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
