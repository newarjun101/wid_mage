import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

class WidMageController {
  static final WidMageController _instance = WidMageController._internal();

  factory WidMageController() {
    return _instance;
  }

  WidMageController._internal();


  ///call this method to take picture of your widget
  static Future<Uint8List?> onCaptureImage({required GlobalKey globalKey}) async {
    if (globalKey.currentContext == null) {
      return throw Exception("WidMage widget must be call");
    } else {
      try {
        final RenderRepaintBoundary boundary = globalKey.currentContext!
            .findRenderObject()! as RenderRepaintBoundary;
        ui.Image image = await boundary.toImage(pixelRatio: 3.0);
        ByteData? byteData =
            await image.toByteData(format: ui.ImageByteFormat.png);
        Uint8List unit8List = byteData!.buffer.asUint8List();
        return unit8List;
      } catch (error) {
        return throw Exception("$error");
      }
    }

//      String bs64 = base64Encode(pngBytes);
  }
}
