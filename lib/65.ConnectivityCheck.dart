import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'main.dart';

void main() {
  runApp(const ConnectivityCheck());
}

class ConnectivityCheck extends StatelessWidget {
  const ConnectivityCheck({Key? key}) : super(key: key);

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
  StreamSubscription? subscription;

  Future checkInternetConnection() async {
    var connectResult = await (Connectivity().checkConnectivity());

    if (connectResult == ConnectivityResult.mobile) {
      Fluttertoast.showToast(msg: "Connected with Mobile");
    } else if (connectResult == ConnectivityResult.wifi) {
      Fluttertoast.showToast(msg: "Connected with WiFi");
    } else {
      Fluttertoast.showToast(msg: "Not Connected");
    }
  }

  @override
  void initState() {
    // for Continuous Check
    subscription = Connectivity().onConnectivityChanged.listen((event) {
      checkInternetConnection();
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Connectivity Check"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: checkInternetConnection,
            child: const Text("Check Connection"),
          ),
        ),
      ),
    );
  }
}
