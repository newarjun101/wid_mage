import 'package:flutter/material.dart';

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
