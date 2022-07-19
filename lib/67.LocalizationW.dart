import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_flutter/languages.dart';

import 'main.dart';

void main() {
  runApp(const LocalizationW());
}

class LocalizationW extends StatelessWidget {
  const LocalizationW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const MyHomePage(),
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
          title: const Text("Localization"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('app_name'.tr,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                Text('app_title'.tr,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('en', 'US');
                    Get.updateLocale(locale);
                  },
                  child: const Text("English"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var locale = const Locale('bn', 'BD');
                    Get.updateLocale(locale);
                  },
                  child: const Text("Bengali"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
