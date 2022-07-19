import 'package:flutter/material.dart';

void main() {
  runApp(const GradientColorW());
}

class GradientColorW extends StatelessWidget {
  const GradientColorW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Gradient Color"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.yellow],
                  )),
            ),
          ),
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated,
                colors: [Colors.pink, Colors.deepPurple],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
