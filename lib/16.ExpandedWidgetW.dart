import 'package:flutter/material.dart';

void main() {
  runApp(const ExpandedWidgetW());
}

class ExpandedWidgetW extends StatelessWidget {
  const ExpandedWidgetW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Expanded for Responsive Design"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(color: Colors.green,)
                ),Expanded(
                    flex: 2,
                    child: Container(color: Colors.red,)
                ),Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue,)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
