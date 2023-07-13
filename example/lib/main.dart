import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:wid_mage/wid_mage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WidMage Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WidMage Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List? myImage;

  final GlobalKey globalKey = GlobalKey();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  try {
                    Uint8List? image = await WidMageController.onCaptureImage(
                        globalKey: globalKey);

                    setState(() {
                      myImage = image;
                    });
                  } catch (error) {
                    debugPrint("arjun $error");
                  }
                },
                child:const  Text("capture")),
            WidMage(
              globalKey: globalKey,
              child: const Text("image one"),
            ),
            if (myImage != null)
              SizedBox(
                height: 100,
                child: Image.memory(myImage!),
              ),

          ],
        ),
      ),
    );
  }


}
