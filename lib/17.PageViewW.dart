import 'package:flutter/material.dart';
import '17.PageView1.dart';
import '17.PageView2.dart';
import '17.PageView3.dart';

void main() {
  runApp(const PageViewW());
}

class PageViewW extends StatefulWidget {
  const PageViewW({Key? key}) : super(key: key);

  @override
  State<PageViewW> createState() => _PageViewWState();
}

class _PageViewWState extends State<PageViewW> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  // For Performance
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Page View"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: _controller,
              children: const <Widget>[
                PageView1(),
                PageView2(),
                PageView3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
