import 'package:flutter/material.dart';

void main() {
  runApp(const ImageW());
}

class ImageW extends StatelessWidget {
  const ImageW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Image from asset and network"),
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
                const Text("Image From Assets", style: TextStyle(fontSize: 30)),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("images/ammc.jpg"),
                const SizedBox(
                  height: 20,
                ),
                const Text("Image From Network",
                    style: TextStyle(fontSize: 30)),
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                    "https://www.ammc-bd.com/images/product_image/1400.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
