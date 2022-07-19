import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const DataTableW());
}

class DataTableW extends StatelessWidget {
  const DataTableW({Key? key}) : super(key: key);

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
          title: const Text("Data Table"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: DataTable(
            headingRowHeight: 100,
            columns: const [
              DataColumn(label: Text("Action"), tooltip: "Action"),
              DataColumn(label: Text("Name"), tooltip: "Name"),
              DataColumn(label: Text("Age"), tooltip: "Age"),
              DataColumn(label: Text("Role"), tooltip: "Role"),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Icon(Icons.add)),
                DataCell(Text("Abdur"),),
                DataCell(Text("22"),),
                DataCell(Text("Student"),),
              ]),
              DataRow(cells: [
                DataCell(Icon(Icons.add)),
                DataCell(Text("Rahim"),),
                DataCell(Text("25"),),
                DataCell(Text("Service"),),
              ]),
              DataRow(cells: [
                DataCell(Icon(Icons.add)),
                DataCell(Text("Rubel"), showEditIcon: true),
                DataCell(Text("30"),),
                DataCell(Text("Farmer"),),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
