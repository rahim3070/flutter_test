import 'package:flutter/material.dart';

void main() {
  runApp(const ListTileW());
}

class ListTileW extends StatelessWidget {
  const ListTileW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("List Tile"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  title: Text("Easy Explanation."),
                  subtitle: Text("Learn everything with easy explation"),
                  leading: CircleAvatar(child: Icon(Icons.message),),
                  trailing: Icon(Icons.add_a_photo),
                ),
                ListTile(
                  title: Text("Easy Explanation."),
                  subtitle: Text("Learn everything with easy explation"),
                  leading: CircleAvatar(child: Icon(Icons.message),),
                  trailing: Icon(Icons.add_a_photo),
                ),
                ListTile(
                  title: Text("Easy Explanation."),
                  subtitle: Text("Learn everything with easy explation"),
                  leading: CircleAvatar(child: Icon(Icons.message),),
                  trailing: Icon(Icons.add_a_photo),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
