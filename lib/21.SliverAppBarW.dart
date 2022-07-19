import 'package:flutter/material.dart';

void main() {
  runApp(const SliverAppBarW());
}

class SliverAppBarW extends StatelessWidget {
  const SliverAppBarW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Sliver App Bar"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  pinned: true,
                  expandedHeight: 200,
                  backgroundColor: Colors.red,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text("Easy Explanation"),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate(<Widget>[
                  addDetails("One", "This is One"),
                  addDetails("Two", "This is Two"),
                  addDetails("Three", "This is Three"),
                  addDetails("Four", "This is Four"),
                  addDetails("Five", "This is Five"),
                  addDetails("Six", "This is Six"),
                  addDetails("Seven", "This is Seven"),
                  addDetails("Eight", "This is Eight"),
                  addDetails("Nine", "This is Nine"),
                  addDetails("Ten", "This is Ten"),
                  addDetails("One", "This is One"),
                  addDetails("Two", "This is Two"),
                  addDetails("Three", "This is Three"),
                  addDetails("Four", "This is Four"),
                  addDetails("Five", "This is Five"),
                  addDetails("Six", "This is Six"),
                  addDetails("Seven", "This is Seven"),
                  addDetails("Eight", "This is Eight"),
                  addDetails("Nine", "This is Nine"),
                  addDetails("Ten", "This is Ten"),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget addDetails(String name, String des) {
  return ListTile(
    title: Text(name),
    subtitle: Text(des),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
