import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test_flutter/17.PageView1.dart';

import 'main.dart';

void main() {
  runApp(const OnboardingScreenW());
}

class OnboardingScreenW extends StatelessWidget {
  const OnboardingScreenW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Onboarding Screen"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: IntroductionScreen(
            pages: [
              PageViewModel(
                title: "First",
                body: "This is our first description.",
                image: Image.asset(
                  "images/one.jpg",
                  width: 350,
                ),
              ),
              PageViewModel(
                title: "Second",
                body: "This is our second description.",
                image: Image.asset(
                  "images/two.jpg",
                  width: 350,
                ),
              ),
              PageViewModel(
                title: "Third",
                body: "This is our third description.",
                image: Image.asset(
                  "images/three.jpg",
                  width: 350,
                ),
              ),
              PageViewModel(
                title: "Fourth",
                body: "This is our fourth description.",
                image: Image.asset(
                  "images/four.jpg",
                  width: 350,
                ),
              ),
            ],
            onDone: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const PageView1()));
            },
            done: const Text("Done"),
            showSkipButton: true,
            skip: const Text("Skip"),
            showNextButton: false,
            dotsDecorator: const DotsDecorator(
              size: Size(10, 10),
              color: Colors.grey,
              activeSize: Size(22, 10),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
