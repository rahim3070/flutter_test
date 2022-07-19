import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'main.dart';
import 'dart:io';

void main() {
  runApp(const ImagePickerLoadImageW());
}

class ImagePickerLoadImageW extends StatelessWidget {
  const ImagePickerLoadImageW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<File?> getImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50); //image quality is in percentage % 100 being the highest

    final File file = File(photo!.path);

      setState(() {
        _image = file;
      });

    return _image;
  }

  Future<File?> getGalleryImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50); //image quality is in percentage % 100 being the highest

    final File file = File(image!.path);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker & Load Image"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blue,
                child: _image == null
                    ? const Center(child: Text("No Image Selected",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)))
                    : Image.file(_image!),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    child: const Icon(Icons.camera),
                    onPressed: () {
                      getImage();
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.photo_library),
                    onPressed: () {
                      getGalleryImage();
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
