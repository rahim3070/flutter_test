import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '47.FetchingDataDetails.dart';
import 'main.dart';

void main() {
  runApp(const FetchingJsonDataW());
}

class FetchingJsonDataW extends StatelessWidget {
  const FetchingJsonDataW({Key? key}) : super(key: key);

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
  var data;

  Future getData() async {
    var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1/comments"));

    setState(() {
      var deCode = jsonDecode(response.body);
      data = deCode;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Fetching Json Data"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['name']),
                  subtitle: Text(data[index]["email"]),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FetchingDataDetails(receivedData: data[index],)));
                  },
                );
              }),
        ),
      ),
    );
  }
}
