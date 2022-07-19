import 'package:flutter/material.dart';
import '19.BottomNav1.dart';
import '19.BottomNav2.dart';

void main() {
  runApp(const TabBarW());
}

class TabBarW extends StatelessWidget {
  const TabBarW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 2,
        child: SafeArea(
          // For Display in Screen
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Tab Bar"),
              centerTitle: true,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context, true);
                  }),
              bottom: const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera),
                  ),
                  Tab(
                    icon: Icon(Icons.message),
                  ),
                ],
              ),
            ),
            body: const Center(
              child: TabBarView(
                children: [
                  BottomNav1(),
                  BottomNav2(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
