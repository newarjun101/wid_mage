import 'package:flutter/material.dart';
import 'package:wid_mage/src/util/wid_mage_controller.dart';

class WidMage extends StatelessWidget {

  final Widget child;
  final GlobalKey globalKey;
  const WidMage({super.key, required this.child, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: globalKey,
      child: child,
    );
  }
}
