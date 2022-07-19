import 'package:flutter/material.dart';

void main() {
  runApp(FetchingDataDetails());
}

class FetchingDataDetails extends StatelessWidget {
  var receivedData;

  FetchingDataDetails({Key? key, this.receivedData}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // For Display in Screen
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Fetching Data Details"),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          body: Center(
              child: Dialog(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    SizedBox(
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 50,),
                            Text(
                              receivedData['name'],
                              style: const TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Color(0xff070707)),
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              receivedData['body'],
                              style: const TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontSize: 18,
                                  color: Color(0xff070707)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: -50,
                        child: CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              child: Image.asset("images/ammc.jpg")),
                        )),
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}
