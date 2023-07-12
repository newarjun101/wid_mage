
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
class MakeWidgetToImage {


  static final GlobalKey globalKey = GlobalKey();
  
 Future<Uint8List?> onCaptureImage() async{
    final RenderRepaintBoundary boundary =
    globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List unit8List = byteData!.buffer.asUint8List();
    return unit8List;
//      String bs64 = base64Encode(pngBytes);
  }
}