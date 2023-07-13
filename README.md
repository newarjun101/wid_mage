# WidMage
A simple and light library to convert your widget to image file. It is very easy to use and can be convert your widget into image just a few line of code.

## Instllation
Add **wid_mage** depecency in your _```pubspect.yaml```_
``` Dart
depencency :
  wid_mage : any
```
After adding wid_mage in your _```pubspect.yaml```_
``` Dart
flutter pub get
```
Now you can use the library.Okay, Lets start more deep dive about the library.

### Usage

```Dart
import 'package:wid_mage/wid_mage.dart';


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
```

For more infomation about ther example please check in Example tab of ```wid_mage``` in pub.dev

# Feature
In the current moment we only can convert our widget into image. If you want to save your image to your gallery
please check https://pub.dev/packages/image_gallery_saver

## Contributing
Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

