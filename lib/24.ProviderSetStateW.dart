import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '24.ProviderData.dart';
import '24.ReceiveData.dart';
import 'main.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {
      return dataProvider();
    },
    child: const ProviderSetStateW(),
  ));
}

class ProviderSetStateW extends StatelessWidget {
  const ProviderSetStateW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 0;

  stateIncrement() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<dataProvider>(context);

    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Provider & Set State"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text("For Set State",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(value.toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold)),
              RaisedButton(
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Click Here'),
                ),
                onPressed: () {
                  stateIncrement();
                },
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("For Provider",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(providerData.value.toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold)),
              RaisedButton(
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Click Here'),
                ),
                onPressed: () {
                  providerData.providerIncrement();
                },
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("Transfer Provider Data to Another Page",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              RaisedButton(
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Transfer Data'),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const receiveProvidedData()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
