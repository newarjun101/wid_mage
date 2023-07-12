import 'package:flutter/material.dart';
import 'package:wid_mage/src/util/make_widget_to_image.dart';

class WidMage extends StatelessWidget {

  final Widget child;
  const WidMage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: MakeWidgetToImage.globalKey,
      child: child,
    );
  }
}
