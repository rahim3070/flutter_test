import 'package:flutter/material.dart';

void main() {
  runApp(const StackPositionedFloatingW());
}

class StackPositionedFloatingW extends StatelessWidget {
  const StackPositionedFloatingW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Stack, Positioned, Floating"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
          body: Center(
            // For nested widget
            child: Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: <Widget>[
              Container(
                height: 200,
                width: 300,
                decoration: const BoxDecoration(color: Colors.amber),
                child: const Text(
                  "I Love Coding",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const Positioned(
                bottom: -50,
                  child: CircleAvatar(
                radius: 50,
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
